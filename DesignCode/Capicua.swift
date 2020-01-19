//
//  Caapicua.swift
//  DesignCode
//
//  Created by Rodrigo Gauzman on 19-01-20.
//  Copyright © 2020 Rodrigo Gauzman. All rights reserved.
//

import Foundation

class Capicua {
    func get(_ n: Int) -> String {
        var stringNumber = String(n)
        
        
        while (!self.isPalindrome(stringNumber)) {
            stringNumber = self.sum(stringNumber)
        }
        return stringNumber
    }
    
    func isPalindrome(_ stringNumber: String) -> Bool {
        return stringNumber == String(stringNumber.reversed())
    }
    
    func sum(_ stringNumber: String) -> String {
        let a = Int(String(stringNumber.reversed())) ?? 0
        let b = Int(stringNumber) ?? 0
        return  String(a + b)
    }
}
