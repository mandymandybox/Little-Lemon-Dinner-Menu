//
//  MenuViewViewModel.swift
//  Little_Lemon_Dinner_Menu
//
//  Created by Mandy Lee on 12/11/2023.
//

import Foundation

class MenuViewViewModel:ObservableObject {
    
  let foods = [
    MenuItem(price: 1.99, title: "Food 1", menuCategory: .Food, orderCounts: 1000, priceInt: 1, ingredient: [.Broccoli, .Pasta, .Carrot]),
    MenuItem(price: 2.99, title: "Food 2", menuCategory: .Food, orderCounts: 2000, priceInt: 2, ingredient: [.TomatoSauce, .Pasta]),
    MenuItem(price: 3.99, title: "Food 3", menuCategory: .Food, orderCounts: 3000, priceInt: 3, ingredient: [.Spinach, .Pasta]),
    MenuItem(price: 4.99, title: "Food 4", menuCategory: .Food, orderCounts: 4000, priceInt: 4, ingredient: [.Broccoli]),
    MenuItem(price: 5.99, title: "Food 5", menuCategory: .Food, orderCounts: 5000, priceInt: 5, ingredient: [.Broccoli, .Pasta, .TomatoSauce]),
    MenuItem(price: 6.99, title: "Food 6", menuCategory: .Food, orderCounts: 6000, priceInt: 6, ingredient: [.Pasta]),
    MenuItem(price: 7.99, title: "Food 7", menuCategory: .Food, orderCounts: 7000, priceInt: 7, ingredient: [.Spinach]),
    MenuItem(price: 8.99, title: "Food 8", menuCategory: .Food, orderCounts: 8000, priceInt: 8, ingredient: [.TomatoSauce]),
    MenuItem(price: 9.99, title: "Food 9", menuCategory: .Food, orderCounts: 9000, priceInt: 9, ingredient: [.Broccoli, .Pasta, .Spinach, .Carrot]),
    MenuItem(price: 10.99, title: "Food 10", menuCategory: .Food, orderCounts: 10000, priceInt: 10, ingredient: [.Pasta, .Carrot]),
    MenuItem(price: 11.99, title: "Food 11", menuCategory: .Food, orderCounts: 11000, priceInt: 11, ingredient: [.Broccoli, .Pasta]),
    MenuItem(price: 12.99, title: "Food 12", menuCategory: .Food, orderCounts: 12000, priceInt: 12, ingredient: [.Pasta]),
  ]
    
    let desserts = [
        MenuItem(price: 1.99, title: "Dessert 1", menuCategory: .Dessert, orderCounts: 1000, priceInt: 1, ingredient: [.Broccoli, .Pasta, .Carrot]),
        MenuItem(price: 2.99, title: "Dessert 2", menuCategory: .Dessert, orderCounts: 2000, priceInt: 2, ingredient: [.TomatoSauce, .Pasta]),
        MenuItem(price: 3.99, title: "Dessert 3", menuCategory: .Dessert, orderCounts: 3000, priceInt: 3, ingredient: [.Spinach, .Pasta]),
        MenuItem(price: 4.99, title: "Dessert 4", menuCategory: .Dessert, orderCounts: 4000, priceInt: 4, ingredient: [.Broccoli]),
    ]
    
    let drinks = [
        MenuItem(price: 1.99, title: "Drink 1", menuCategory: .Drink, orderCounts: 1000, priceInt: 1, ingredient: [.Broccoli, .Pasta, .Carrot]),
        MenuItem(price: 2.99, title: "Drink 2", menuCategory: .Drink, orderCounts: 2000, priceInt: 2, ingredient: [.TomatoSauce, .Pasta]),
        MenuItem(price: 3.99, title: "Drink 3", menuCategory: .Drink, orderCounts: 3000, priceInt: 3, ingredient: [.Spinach, .Pasta]),
        MenuItem(price: 4.99, title: "Drink 4", menuCategory: .Drink, orderCounts: 4000, priceInt: 4, ingredient: [.Broccoli]),
        MenuItem(price: 5.99, title: "Drink 5", menuCategory: .Drink, orderCounts: 5000, priceInt: 5, ingredient: [.Broccoli, .Pasta, .TomatoSauce]),
        MenuItem(price: 6.99, title: "Drink 6", menuCategory: .Drink, orderCounts: 6000, priceInt: 6, ingredient: [.Pasta]),
        MenuItem(price: 7.99, title: "Drink 7", menuCategory: .Drink, orderCounts: 7000, priceInt: 7, ingredient: [.Spinach]),
        MenuItem(price: 8.99, title: "Drink 8", menuCategory: .Drink, orderCounts: 8000, priceInt: 8, ingredient: [.TomatoSauce]),
    ]
  
}
