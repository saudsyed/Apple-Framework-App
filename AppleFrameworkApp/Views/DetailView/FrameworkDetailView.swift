//
//  FrameworkDetailView.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 27/09/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShowingDetailView: Bool
    @Binding var isListingView: Bool
    @State private var isShowingSafariView = false
    
    var framework: FrameworkDataModel
    
    var body: some View {
        VStack {
            if !isListingView {
                HStack {
                    Spacer()
                    Button(action: {
                        isShowingDetailView = false
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    })
                    .padding()
                }
            }
            
            Spacer()
            
            FrameworkGridItemView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                Label("Learn More", systemImage: "book.fill")
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
            .fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com"))!)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), isListingView: .constant(false), framework: FrameworkData.sampleFramework)
}
