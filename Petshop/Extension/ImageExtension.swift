//
//  ImageExtension.swift
//  Petshop
//
//  Created by hakkı can şengönül on 7.06.2022.
//

import Foundation
import SwiftUI


extension Image {
    
    func toolbarItemImageStyle() -> some View {
        self.resizable()
            .scaledToFit()
            .frame(width: 35, height: 35, alignment: .center)
            .imageScale(.large)
            .shadow(color: .accentColor.opacity(0.4), radius: 5, x: 2, y: -2)
    }
    func searchImageStyle() -> some View {
        self.font(.system(size: 30))
            .foregroundColor(.accentColor)
            .imageScale(.large)
    }
    
    
    
}
