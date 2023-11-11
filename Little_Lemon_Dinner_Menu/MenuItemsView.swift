//
//  MenuItemsView.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 10/11/2023.
//

import SwiftUI

struct MenuItemsView: View {
    
    let columns = [
        GridItem(.flexible(minimum: 70, maximum: 100)),
        GridItem(.flexible(minimum: 70, maximum: 100)),
        GridItem(.flexible(minimum: 70, maximum: 100))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    //Food session
                    Text("Food")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<30) {
                            i in Text("Food \(i)")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.yellow)
                        }
                    }
                    
                    //Drinks session
                    Text("Drinks")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<30) {
                            i in Text("Drink \(i)")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.yellow)
                        }
                    }
                    
                    //Dessert
                    Text("Dessert")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<30) {
                            i in Text("Dessert \(i)")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.yellow)
                        }
                    }
                    
                }
                .navigationTitle("Menu")
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .toolbar {
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Image(systemName: "pencil")
                    }
                }
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
