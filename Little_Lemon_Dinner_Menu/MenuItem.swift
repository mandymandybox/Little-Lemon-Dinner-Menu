//
//  MenuItem.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 11/11/2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orderCounts: Int { get set }
    var priceInt: Int { get set }
    var ingredient: [Ingredient] { get set }
    
}

struct MenuItem: Identifiable, MenuItemProtocol {
    var id = UUID()
    var price: Double
    var title: String
    var menuCategory: MenuCategory
    var orderCounts: Int
    var priceInt: Int
    var ingredient: [Ingredient]
    
}


