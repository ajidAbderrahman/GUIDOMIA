//
//  ErrorView.swift
//  Guidomia
//
//  Created by Abderrahman Ajid on 14/4/2023.
//

import SwiftUI

struct ErrorView: View {
    let error: GeneratorError
    var body: some View {
        Text(error.localizedDescription)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: .InvalidDecoding)
    }
}
