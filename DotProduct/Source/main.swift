//
//  DotProduct.swift
//  ScienceKit - Contributed by Tim Burgess - timburgess@mac.com
//
//  Xcode turns main.swift into an executable in build/Debug/
//


import Accelerate  // required by Upsurge
import Upsurge

let vector1 = RealArray([1.0, 2.0])
let vector2 = RealArray([3.0, 4.0])

let result = vector1 • vector2

print("The dot product of \(vector1) and \(vector2) is \(result)")

