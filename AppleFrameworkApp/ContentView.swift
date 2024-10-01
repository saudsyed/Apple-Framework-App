//
//  ContentView.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 27/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isListingView {
                FrameworkListingView(viewModel: viewModel)
            } else {
                FrameworkGridView(viewModel: viewModel)
            }
        }
        .tint(Color(.label))
        
    }
}

#Preview {
    ContentView()
}
