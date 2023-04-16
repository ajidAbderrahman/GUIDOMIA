//
//  WelcomeView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 16/4/2023.
//

import SwiftUI

struct WelcomeView: View {
    var cars: Cars
    var body: some View {
        NavigationStack {
            CarsView(cars: cars)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            // TODO: add menu action
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("GUIDOMIA").font(.title2)
                            .bold()
                    }
                }
                .toolbarColorScheme(.dark)
                .toolbarBackground(DefaultTheme.orange)
                .toolbarBackground(.visible)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(cars: Cars.preview)
    }
}
