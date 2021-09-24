//
//  Point.swift
//  iOS_Week_1
//
//  Created by Batuhan BARAN on 23.09.2021.
//

import Foundation

struct Point {
    let x: Float
    let y: Float
    static let shared = Point(x: 0.0, y: 0.0)
    
    func calculateDistanceOfPoints(firstPoint: Self, secondPoint: Self) -> String {
        let r1 = pow((firstPoint.x - secondPoint.x),2)
        let r2 = pow((firstPoint.y - secondPoint.y),2)
        return String(format: "%.2f", abs((r1 + r2).squareRoot()))
    }
}
