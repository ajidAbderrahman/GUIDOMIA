//
//  GuidomiaApp.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 13/4/2023.
//

import SwiftUI

@main
struct GuidomiaApp: App {
    var body: some Scene {
        WindowGroup {
            mainView()
        }
    }
    
    private func mainView() -> some View {
        let result = CarsGenerator().generate()
        
        switch result {
        case .success(let cars):
            return AnyView(WelcomeView(cars: cars))
        case .failure(let error):
            return AnyView(ErrorView(error: error))
        }
    }
}
