//
//  FrameworkListItemView.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 01/10/2024.
//

import SwiftUI

struct FrameworkListItemView: View {
    let framework: FrameworkDataModel
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}
