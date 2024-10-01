//
//  FrameworkGridView.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 01/10/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @ObservedObject var viewModel : FrameworkViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(FrameworkData.frameworks) { framework in
                    FrameworkGridItemView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
        }
        .navigationTitle("Frameworks")
        .navigationBarItems(trailing: Button(action: {
            viewModel.isListingView.toggle()
        }, label: {
            Image(systemName: "square.grid.3x2")
        }))
        .sheet(isPresented: $viewModel.isShowingDetailView) {
            FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, isListingView: $viewModel.isListingView,
                                framework: viewModel.selectedFramework ?? FrameworkData.sampleFramework)
        }
    }
}

#Preview {
    FrameworkGridView(viewModel: FrameworkViewModel())
}
