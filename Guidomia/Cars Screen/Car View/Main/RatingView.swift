//
//  RatingView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

struct RatingView: View {
    let rating: Int
    var body: some View {
        HStack {
            ForEach(1..<6) { index in
                if index <= rating {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                } else {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 15, height: 15)
                }
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 4).previewLayout(.sizeThatFits)
    }
}
