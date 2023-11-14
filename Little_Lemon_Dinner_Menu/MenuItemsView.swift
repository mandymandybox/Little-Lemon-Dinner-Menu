//
//  MenuItemsView.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 10/11/2023.
//

import SwiftUI

struct MenuItemsView: View {
    
    @State private var showingPopover = false
    @EnvironmentObject var model: MenuViewViewModel
    
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
                        ForEach(model.foods) {
                                food in
                            NavigationLink() {
                                MenultemDetailsView(food)
                                } label: {
                                    VStack() {
                                        Image(food.title)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(.white)
                                        Text(food.title)
                                }
                            }
                        }
                    }
                    
                    //Drinks session
                    Text("Drinks")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(model.drinks) {
                            drink in
                        NavigationLink() {
                            MenultemDetailsView(drink)
                            } label: {
                                VStack() {
                                    Image(drink.title)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(.white)
                                    Text(drink.title)
                            }
                        }
                        }
                    }
                    
                    //Dessert
                    Text("Dessert")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(model.desserts) {
                            dessert in
                        NavigationLink() {
                            MenultemDetailsView(dessert)
                            } label: {
                                VStack() {
                                    Image(dessert.title)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(.white)
                                    Text(dessert.title)
                            }
                        }
                        }
                    }
                    
                }
                .navigationTitle("Menu")
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .toolbar {
                ToolbarItem {
                    Button {
                        showingPopover = true
                    } label: {
                        Image(systemName: "pencil")
                    }
                    .popover(isPresented: $showingPopover) {
                        MenultemsOptionView()
                            }
                    
                }
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView().environmentObject(MenuViewViewModel())
    }
}
