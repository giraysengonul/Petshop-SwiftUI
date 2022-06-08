//
//  TextExtends.swift
//  Petshop
//
//  Created by hakkı can şengönül on 7.06.2022.
//

import Foundation
import SwiftUI


extension Text {
    
    func homeTextStyle() -> some View {
        self.font(.headline)
            .fontWeight(.heavy)
            .foregroundColor(.secondary)
    }
    
    func headTextStyle() -> some View {
        self.fontWeight(.bold)
            .font(.title)
            .lineLimit(2).padding(.leading,10)
    }
}
