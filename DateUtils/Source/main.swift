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
