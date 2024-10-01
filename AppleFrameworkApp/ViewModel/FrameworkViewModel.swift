//
//  FrameworkViewModel.swift
//  AppleFrameworkApp
//
//  Created by Saud Syed on 27/09/2024.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    
    @Published var isShowingDetailView = false
    @Published var isListingView = true
    
    var selectedFramework: FrameworkDataModel? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
