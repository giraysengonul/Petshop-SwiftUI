//
//  TextFieldextension.swift
//  Petshop
//
//  Created by hakkı can şengönül on 7.06.2022.
//

import Foundation
import SwiftUI


extension TextField {
    
    func textFieldStyle() -> some View {
        self .padding(7)
            .overlay(
                RoundedRectangle(cornerRadius: 12).stroke(Color.accentColor, lineWidth: 1.4)
            )
    }
    
    
}
