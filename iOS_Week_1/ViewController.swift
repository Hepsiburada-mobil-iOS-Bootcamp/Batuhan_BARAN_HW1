//
//  ViewController.swift
//  iOS_Week_1
//
//  Created by Erkut Bas on 19.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToAlgorithmPage(_ sender: Any) {
        let algorithmManager = AlgoruthmManager()
        guard let viewController = storyboard?.instantiateViewController(identifier: "AlgorithmViewController") as? AlgorithmViewController else {
            fatalError("Opps there is no such viewController")
        }
        viewController.algorithmManager = algorithmManager
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func basicsTest(_ sender: Any) {
        // please provide a couple of sample functionality for class, struct and enum use cases by creating your own modules. We provide you some sample class, enum and struct please provide your own.
        // The code below is just sample
//        let structObj = SampleStruct(title: "title", subTitle: "subTitle")
//        let classObj = SampleClass(name: "name", surName: "surname").setTitleObject(by: structObj)
//        classObj.display()

        // MARK:- Struct Sample
        let point1 = Point(x: 3, y: 2)
        let point2 = Point(x: 7, y: 8)
        print(point1.calculateDistanceOfPoints(firstPoint: point1, secondPoint: point2))
        print("\n")
        
        // MARK:- Class Sample
        let teacherA = Teacher(name: "James", identityNumber: 3453453, gender: .male, age: 36, nationality: "England")
        let teacherB = Teacher(name: "Bob", identityNumber: 45645645, gender: .other, age: 43, nationality: "Sweden")

        let studentA = Student(stuNumber: 160209304, schoolName: "Stanford University 🤪", name: "Batuhan", identityNumber: 12312443, gender: .male, age: 23, nationality: "Turkey", advisor: teacherA)
        studentA.displayStudentInfo()
        let studentB = Student(stuNumber: 2346546, schoolName: "Massachusetts Institute of Technology 🤪", name: "Ahmet", identityNumber: 5645655, gender: .male, age: 27, nationality: "Turkey", advisor: teacherA)
        studentB.displayStudentInfo()
        let studentC = Student(stuNumber: 45634512, schoolName: "Oxford University. 🤪", name: "Ceren", identityNumber: 4564576, gender: .female, age: 25, nationality: "Turkey", advisor: teacherB)
        studentC.displayStudentInfo()

        teacherA.students.append(studentA)
        teacherA.students.append(studentC)
        teacherB.students.append(studentB)
        teacherA.getStudentInfo()
        teacherB.getStudentInfo()

        let dataStructers = Lesson(name: "Data Structers & Algorithm", code: "CMPE 226")
        let cProgramming = Lesson(name: "C Programming", code: "CMPE 113")
        let blockChain = Lesson(name: "BlockChain", code: "SE 428")
        let internetProgramming = Lesson(name: "Internet Programming", code: "ISE 314")

        teacherA.givenLessons.append(dataStructers)
        teacherA.givenLessons.append(cProgramming)

        teacherB.givenLessons.append(blockChain)
        teacherB.givenLessons.append(dataStructers)
        teacherB.givenLessons.append(internetProgramming)

        teacherA.getGivenLesson()
        teacherB.getGivenLesson()
    }
}

