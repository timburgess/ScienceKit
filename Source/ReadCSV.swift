//  Rename this to main.swift to use it
//
//  ReadData.swift
//  ScienceKit example - Tim Burgess - timburgess@mac.com
//
//  Example code for reading from a CSV file and calculating
//  mean and standard deviation of data

import Foundation // required for NS thingamajigs
import Accelerate // required for Upsurge
import Upsurge


/**
 * read in SST data from filepath given
 */
func readCSV(path: String) -> ([String]!, [Double]!) {
  
  print("Reading from \(path)")
  
  let error: NSErrorPointer = nil
  let space = NSCharacterSet(charactersInString: " ")
  if let csv = CSV(contentsOfFile: path, delimiter:space, encoding: NSUTF8StringEncoding, error: error) {
    
    let dates = csv.columns["Date"]!
    let sstStrings = csv.columns["SST"]!
    print("Read \(dates.count) entries")
    
    // transform String array to Double array using a closure
    // a more simplified form of this would be: sstStrings.map { Double($0)! }
    let sst = sstStrings.map({ Double($0)! })

    return (dates, sst)
  }
  // read error ocurred so return nil
  return (nil, nil)
}

// by default, executable runs from ./build/debug/
let (dates, sst) = readCSV("../../Data/SST_blended5km_00.025S_130.025W_2014-11-01_2015-11-01.txt")
let allSST = RealArray(sst)
//print(String(format: "Mean temperature value is %5.2fC with a standard deviation of %4.2fC", mean(allSST), std(allSST)))
