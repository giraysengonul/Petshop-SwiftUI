//
//  HomeView.swift
//  Petshop
//
//  Created by hakkı can şengönül on 7.06.2022.
//

import SwiftUI
struct HomeView: View {
    // MARK: - PROPERTIES
    
    
    @State private var username: String = ""
    @State private var isSerach : Bool = true
    @State private var isAnimating : Bool = true
    
    
    // MARK: - BODY
    var body: some View {
        
        NavigationView{
            VStack (alignment: .center){
                
                ZStack(alignment: .leading) {
                    Text("Golden Retrever Pet Dog").headTextStyle()
                    
                    GroupBox {
                        
                        HStack(spacing: 10) {
                            Image(systemName: "magnifyingglass.circle.fill")
                                .searchImageStyle()
                                .onTapGesture {
                                    withAnimation(.easeOut(duration: 1)) {
                                        isSerach.toggle()
                                    }
                                }
                            
                            TextField("Search", text: $username)
                                .textFieldStyle()
                                .onSubmit {
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        isSerach.toggle()
                                    }
                                }
                        }
                    }//GroupBox
                    .offset(x: isSerach ? 350 : 0)
                    .opacity(isAnimating ? 1 : 0)
                    .frame(height : 30)
                }//ZStack
                .padding(.top,40)
                Spacer()
                //body
                Capsule()
                    .frame(width: 300, height: 300, alignment: .center).foregroundColor(.accentColor.opacity(0.4))
                    .overlay(
                        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2017/02/22/16/55/cat-2089916_1280.png")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                            .padding(.bottom,20)
                            .frame(width: 250, height: 250,alignment: .center),alignment: .center
                    )
                    .overlay(
                        
                        Button(action: {
                            print("")
                        }, label: {
                            Text("Adopt Now ->")
                                .homeTextStyle()
                                .padding(6)
                        }
                              ).buttonStyle(.borderedProminent)
                            .opacity(isAnimating ? 1 : 0)
                        ,alignment: .bottom)
                
                
                Spacer()
            }//VStack
            
            .navigationTitle("Petshop")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement:.navigationBarLeading) {
                    Image(systemName: "heart.text.square")
                        .toolbarItemImageStyle()
                        .opacity(isAnimating ? 1 : 0)
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/56843071?v=4"), scale: 5)
                    
                        .frame(width: 43, height: 43, alignment: .center)
                        .cornerRadius(12)
                        .opacity(isAnimating ? 1 : 0)
                    
                    
                }
                
            }//ToolBar
            .onAppear {
                withAnimation(.linear(duration: 3)) {
                    isAnimating.toggle()
                }
            }
        }//NavigationView
        
    }
    
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.light)
    }
}
