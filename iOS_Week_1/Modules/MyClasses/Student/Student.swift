//
//  Student.swift
//  iOS_Week_1
//
//  Created by Batuhan BARAN on 22.09.2021.
//

import Foundation

class Student: Person {
    var stuNumber: Int
    var schoolName: String
    var advisor: Teacher
    
    init(stuNumber: Int, schoolName: String, name: String, identityNumber: Int, gender: Gender, age: Int, nationality: String, advisor: Teacher) {
        self.stuNumber = stuNumber
        self.schoolName = schoolName
        self.advisor = advisor
        super.init(name: name, identityNumber: identityNumber, gender: gender, age: age, nationality: nationality)
    }
    
    func displayStudentInfo() {
        print("Name:\(self.name)\nIdentityNumber:\(self.identityNumber)\nGender:\(self.gender)\nAge:\(self.age)\nNationality:\(self.name)\nStudentNumber:\(self.stuNumber)\nSchoolName:\(self.schoolName)\n")
        advisor.displayInfo()
    }
    
}
