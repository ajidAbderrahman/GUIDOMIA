//
//  BulletPointView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

struct BulletPointView: View {
    
    let text: String
    
    var body: some View {
        HStack {
            if !text.isEmpty {
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .foregroundColor(DefaultTheme.orange)
                Text(text)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(DefaultTheme.bulletPointTextColor)
            }
        }
    }
}

struct BulletPointView_Previews: PreviewProvider {
    static var previews: some View {
        BulletPointView(text: "You can heard the engine over children cry at the back")
    }
}
