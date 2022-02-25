//
//  Update.swift
//  CashRegister
//
//  Created by Oreoluwa Lawal on 2022-02-17.
//

import Foundation
class Delete{
    var products = ProductList()
    
    //Delete quantity from a product
    func updateQuantity(name n: String, quantity q: Int) -> ProductList{
        for p in products.allProducts{
            if p.name == n{
                p.quantity = p.quantity - q
                
            }
            
        }
        return products
    }
   
}

