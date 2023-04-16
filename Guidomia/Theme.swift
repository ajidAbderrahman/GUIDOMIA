//
//  Theme.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

protocol Theme {
    static var orange: Color { get }
    static var darkGray: Color { get }
    static var lightGray: Color { get }
    static var textColor: Color { get }
    static var bulletPointTextColor: Color { get }
    static var separatorHeight: CGFloat {get}
}

final class DefaultTheme: Theme {
    
    static var orange: Color {
        Color(red: 252/255, green: 95/255, blue: 22/255)
    }
    
    static var darkGray: Color {
        Color(red: 133/255, green: 133/255, blue: 133/255)
    }
    
    static var lightGray: Color {
        Color(red: 213/255, green: 213/255, blue: 213/255)
    }
    
    static var textColor: Color {
        Color(.black.withAlphaComponent(0.45))
    }
    
    static var bulletPointTextColor: Color {
        Color(.black)
    }
    
    static var separatorHeight: CGFloat { 4.0 }
    
}
