//
//  WelcomeImage.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 16/4/2023.
//

import SwiftUI

struct WelcomeImage: View {
    var body: some View {
        ZStack {
            Image("Tacoma")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Spacer()
                Text("Tacoma 2021")
                    .font(.system(size: 30, weight: .black))
                
                Text("Get your's now")
                    .font(.system(size: 18, weight: .bold))
            }
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}


struct WelcomeImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeImage()
    }
}
