//
//  MenuItemTests.swift
//  MenuItemTests
//
//  Created by Mandy Lee on 15/11/2023.
//

import XCTest
@testable import Little_Lemon_Dinner_Menu

final class MenuItemTests: XCTestCase {
    
    func test_menuTitle_init_Food1() {
        let food = MenuViewViewModel().foods[0]
        XCTAssert(food.title == "Food 1")
    }
    
    func test_menuIngredient_init_broccoliPastaCarrot() {
        let food = MenuViewViewModel().foods[0]
        XCTAssert(food.ingredient == [.Broccoli, .Pasta, .Carrot])
    }
    
}
