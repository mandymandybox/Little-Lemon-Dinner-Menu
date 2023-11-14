//
//  MenultemsOptionView.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 11/11/2023.
//

import SwiftUI

enum sortBy: String {
    case popular = "Most popular"
    case price = "Price $-$$$"
    case az = "A-Z"
}

struct MenultemsOptionView: View {
    
    var body: some View {
        NavigationView {
            Form {
                //Selection categories
                Section(header: Text("SELECTED CATEGORIES")) {
                    Text(MenuCategory.Food.rawValue)
                    Text(MenuCategory.Drink.rawValue)
                    Text(MenuCategory.Dessert.rawValue)
                }
                
                //sorting method session
                Section(header: Text("SORT BY")) {
                    Text(sortBy.popular.rawValue)
                    Text(sortBy.price.rawValue)
                    Text(sortBy.az.rawValue)
                }
                
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Text("Done")
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

struct MenultemsOptionView_Previews: PreviewProvider {
    @Binding var showing: Bool
    static var previews: some View {
        MenultemsOptionView()
    }
}
