//
//  FrameworkListingView.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 01/10/2024.
//

import SwiftUI

struct FrameworkListingView: View {
    
    @ObservedObject var viewModel : FrameworkViewModel
    
    var body: some View {
            List {
                ForEach(FrameworkData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, isListingView: $viewModel.isListingView, framework: framework)) {
                        FrameworkListItemView(framework: framework)
                    }
                }
            }
            .navigationTitle("Frameworks")
            .navigationBarItems(trailing: Button(action: {
                viewModel.isListingView.toggle()
            }, label: {
                Image(systemName: "list.bullet")
            }))
    }
}

#Preview {
    FrameworkListingView(viewModel: FrameworkViewModel())
}
