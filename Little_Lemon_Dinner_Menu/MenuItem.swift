//
//  MenuItem.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 11/11/2023.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let ingredient: Ingredient
}

protocol MenuItemP {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orderCounts: Int { get set }
    var priceInt: Int { get set }
    var ingredient: [Ingredient] { get set }
    
}
