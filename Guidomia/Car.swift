//
//  Car.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 13/4/2023.
//

import Foundation

struct Car: Codable {
    let consList: [String]
    let customerPrice: Int
    let make: String
    let marketPrice: Int
    let model: String
    let prosList: [String]
    let rating: Int
    let imageName: String
}

typealias Cars = [Car]
