//
//  Teacher.swift
//  iOS_Week_1
//
//  Created by Batuhan BARAN on 22.09.2021.
//

import Foundation

class Teacher: Person {
    var students: [Student] = []
    var givenLessons: [Lesson] = []
    
    func getStudentInfo() {
        students.forEach({$0.displayStudentInfo()})
    }
    
    func displayInfo() {
        print("Name:\(self.name)\nIdentityNumber:\(self.identityNumber)\nGender:\(self.gender)\nAge:\(self.age)\nNationality:\(self.nationality)\n")
    }
    
    func getGivenLesson() {
        print("Given Lessons:\n")
        givenLessons.forEach({print($0.name + " " + $0.code)})
        print("\n")
    }
}
