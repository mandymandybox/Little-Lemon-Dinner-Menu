//
//  MenultemDetailsView.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 12/11/2023.
//

import SwiftUI

struct MenultemDetailsView: View {
    
    @EnvironmentObject var model: MenuViewViewModel
    
    private var item:MenuItem
    
    init(_ item:MenuItem) {
        self.item = item
    }
    
    var body: some View {
        NavigationView {
            VStack() {
                    Image("Little Lemon logo")
                        .resizable()
                        .padding(.bottom)
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    Text("Price:")
                        .fontWeight(.bold)
                    Text("\(item.price, specifier: "%.2f")")
                        .padding(.bottom, -1.0)
                    Text("Ordered:")
                        .fontWeight(.bold)
                    Text("\(item.orderCounts)")
                        .padding(.bottom, -1.0)
                    Text("Ingredients:")
                        .fontWeight(.bold)
                    let ingred = item.ingredient
                    Text("\(ingred[0].rawValue)")
                    
            }.navigationTitle(item.title)
        }
        
        
    }
}

struct MenultemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleFood = MenuItem(price: 1.99, title: "Food 1", menuCategory: .Food, orderCounts: 1000, priceInt: 1, ingredient: [.Broccoli, .Pasta])
        MenultemDetailsView(sampleFood).environmentObject(MenuViewViewModel())
    }
}
