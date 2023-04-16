//
//  CarView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

struct CarView: View {
    let car: Car
    let isExpanded: Bool
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image(car.imageName)
                    .resizable()
                    .frame(width: 140, height: 80)
                    .scaledToFit()
                MainView(model: car.model, price: formatedPrice(car.marketPrice), rating: car.rating)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            ExtensionView(pros: car.prosList, cons: car.consList)
                .frame( maxWidth: .infinity, maxHeight: isExpanded ? .none : 0, alignment: .leading)
                .clipped()
            
        }
        .padding()
        .fixedSize(horizontal: false, vertical: true)
        .background(DefaultTheme.lightGray)
    }
    
}

extension CarView {
    private func formatedPrice(_ value: Int) -> String {
        IntegerFormatStyle<Int>().notation(.compactName).format(value)
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(car: Car.preview, isExpanded: false)
            .previewLayout(.sizeThatFits)
    }
}
