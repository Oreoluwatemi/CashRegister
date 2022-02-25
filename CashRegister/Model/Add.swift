//
//  Add.swift
//  CashRegister
//
//  Created by Oreoluwa Lawal on 2022-02-17.
//

import Foundation
class Add{
    var products = ProductList()
    
    //add quantity to the products
    func addQuantity(name n: String, quantity q: Int) ->ProductList
    {
        for p in products.allProducts{
            if(p.name == n){
                p.quantity = p.quantity + q
            }
        }
        return products
    }
    
}
