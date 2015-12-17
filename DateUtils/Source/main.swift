//
//  DateUtilities.swift
//  ScienceKit - Contributed by Tim Burgess - timburgess@mac.com
//
//  A simple extension to NSDate for simple date requirements.
//
//  NSDate is basically a wrapper for Double and the date functions
//  in Foundation are overly verbose and can be hard to grok

import Foundation


let today = NSDate()
print("Today is day \(today.dayOfYear) in the year \(today.year)")

let someDay = NSDate(year: 1985, month: 12, day: 1)
print("someDay is day \(someDay.dayOfYear) in the year \(someDay.year)")

let doy = NSDate(year: 2009, month: 1, day: 91)
print("doy is day \(doy.dayOfYear) in the year \(doy.year)")
