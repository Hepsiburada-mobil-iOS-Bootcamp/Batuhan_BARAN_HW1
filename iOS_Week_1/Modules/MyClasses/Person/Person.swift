//
//  Person.swift
//  iOS_Week_1
//
//  Created by Batuhan BARAN on 22.09.2021.
//

import Foundation

class Person {
    let name: String
    let identityNumber: Int
    let gender: Gender
    let age: Int
    let nationality: String
    
    init(name: String,identityNumber: Int, gender: Gender, age: Int, nationality: String) {
        self.name = name
        self.identityNumber = identityNumber
        self.gender = gender
        self.age = age
        self.nationality = nationality
    }
}
