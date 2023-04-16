//
//  CarsView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 13/4/2023.
//

import SwiftUI

struct CarsView: View {
    @State private var selection: String?
    var cars: Cars
    var body: some View {
        List {
            Section {
                WelcomeImage()
                    .listRowInsets(EdgeInsets())
            }.padding(.bottom)
            Section() {
                ForEach(cars.indices, id: \.self) { index in
                    CarView(car: cars[index], isExpanded: cars[index].model == selection)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        .onTapGesture {
                            selection = cars[index].model
                        }
                    DefaultTheme.orange
                        .frame(height: DefaultTheme.separatorHeight)
                    // to prevent highlight background color change
                        .listRowBackground(Color.white)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct CarsView_Previews: PreviewProvider {
    static var previews: some View {
        CarsView(cars: Cars.preview)
    }
}
