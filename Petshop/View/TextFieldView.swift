//
//  TextFieldView.swift
//  Petshop
//
//  Created by hakkı can şengönül on 7.06.2022.
//

import SwiftUI

struct TextFieldView: View {
    @State var controllerTitle: String
    @State var title: String
    var body: some View {
        HStack(alignment: .center) {
            
            Spacer()
            Image(systemName: "magnifyingglass.circle.fill").foregroundColor(.accentColor)
                .imageScale(.large)
                .onTapGesture {
                    print("ss")
                }
            
            
            TextField(
                title,
                text: $controllerTitle
            )
            
            .onSubmit {
                print("tıkladı")
            }
            .padding(1)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            
            .shadow(color: .black.opacity(0.2), radius: 8, x: 3, y: -3)
            
            .padding(9)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.accentColor, lineWidth: 1.5)
        )
        .padding()
        
        
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(controllerTitle: "", title: "Search").previewLayout(.sizeThatFits).preferredColorScheme(.light)
    }
}
