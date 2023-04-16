//
//  ExtensionView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

struct ExtensionView: View {
    var pros: [String]
    var cons: [String]
    var body: some View {
        VStack(alignment: .leading) {
            if pros.count > 0 {
                ArgumentsView(title: "Pros :", arguments: pros)
            }
            
            if cons.count > 0 {
                ArgumentsView(title: "Cons :", arguments: cons)
                    .padding(.bottom)
            }
        }
    }
}

struct ExtensionView_Previews: PreviewProvider {
    static var previews: some View {
        ExtensionView(
            pros: [
                "Your average business man car",
                "Can bring the family home safely",
                "The city must have"
            ]
            ,cons: [
                "Your average business man car",
                "Can bring the family home safely",
                "The city must have"
            ]
        )
        .previewLayout(.sizeThatFits)
    }
}
