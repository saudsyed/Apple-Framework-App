//
//  FrameworkGridView.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 27/09/2024.
//

import SwiftUI

struct FrameworkGridItemView: View {
    
    let framework: FrameworkDataModel
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
