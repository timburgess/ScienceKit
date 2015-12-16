//
//  DateUtilities.swift
//  ScienceKit - Contributed by Tim Burgess - timburgess@mac.com
//
//  A simple extension to NSDate for simple date requirements.
//
//  NSDate is basically a wrapper for Double and the date functions
//  in Foundation are overly verbose and can be hard to grok

import Foundation


extension NSDate {
  
  var year: Int {
    get {
      return NSCalendar.currentCalendar().component(.Year, fromDate: self)
    }
  }
  
  var month: Int {
    get {
      return NSCalendar.currentCalendar().component(.Month, fromDate: self)
    }
  }

  var dayOfYear: Int {
    get {
      return NSCalendar.currentCalendar().ordinalityOfUnit(.Day, inUnit: .Year, forDate: self)
    }
  }
  
}


