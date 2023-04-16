//
//  ArgumentsView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 15/4/2023.
//

import SwiftUI

struct ArgumentsView: View {
    var title: String
    var arguments: [String]
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundColor(DefaultTheme.textColor)
                .font(.system(size: 18, weight: .bold))
            ForEach(0..<arguments.count, id: \.self) {
                BulletPointView(text: arguments[$0])
                    .padding(.leading)
            }
        }
        .padding([.leading, .top])
    }
}

struct ArgumentsView_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentsView(title: "Pros :", arguments: [
            "You can heard the engine over children cry at the back",
            "You may lose this one if you divorce"
         ])
        .previewLayout(.sizeThatFits)
    }
}
