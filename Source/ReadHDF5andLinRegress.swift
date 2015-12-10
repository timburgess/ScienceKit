//  Rename this to main.swift to use it
//
//  ReadHDF5andlinRegress.swift
//  ScienceKit example
//  Contributed by Tim Burgess - timburgess@mac.com
//
//  Example code for reading from an HDF5 file and
//  performing linear regression on data

import Foundation // required for NS thingamajigs
import CHDF5      // required by HDF5Kit
import HDF5Kit
import Accelerate // required for Upsurge
import Upsurge


/**
 * read a single-precision floating point node from an HDF5 file
 */
func readFloatNode(path: String, nodeName: String) -> [Float] {
  
  print("Reading from \(path)")
  
  guard let file = File.open(path, mode: .ReadOnly) else {
    fatalError("Failed to open \(path)")
  }
  guard let dataset = file.openDataset(nodeName, type: Float.self) else {
    fatalError("Failed to open variable \(nodeName)")
  }
  return dataset.read() as! [Float]
}
  
/* Uncomment this section for main.swift
// by default, executable runs from ./build/debug/
let floatSST = readFloatNode("../../Data/SST_blended5km_00.025S_130.025W_2014-11-01_2015-11-01.h5", nodeName: "sst")

let sst = RealArray(floatSST.map { Double($0) })
let x = (0..<sst.count).map { Double($0) }
let (slope, intercept) = linregress(x, sst)
print(String(format: "Average daily increase of %6.4f degrees C from %5.3fC over %d days", slope, intercept, sst.count))
*/