//
//  MainView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

struct MainView: View {
    
    var model: String
    var price: String
    var rating: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model)
                .foregroundColor(DefaultTheme.textColor)
                .font(.system(size: 20, weight: .bold))
            Text("Price : \(price)")
                .foregroundColor(DefaultTheme.textColor)
                .font(.system(size: 14, weight: .bold))
            Spacer()
            RatingView(rating: rating)
                .foregroundColor(DefaultTheme.orange)
        }
        .padding(.vertical, 10)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(model: "Alpine roadster", price: "230k", rating: 4)
            .previewLayout(.sizeThatFits)
    }
}
