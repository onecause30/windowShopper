//
//  Wage.swift
//  windowShopper
//
//  Created by Anthony Hall on 8/23/18.
//  Copyright © 2018 Anthony Hall. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double ) -> Int {
        return Int(ceil(price / wage))
    }
}
