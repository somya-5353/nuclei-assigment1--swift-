//
//  ItemDetails.swift
//  assigment1
//
//  Created by Somya on 22/01/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

struct ItemDetails {
//members of the class ItemDetails

private var item_name:String=""
private var item_type:String=""
private var item_price:Double=0.0
private var item_quantity:Int=0
private var tax:Double=0.0

//setter functions
mutating func setName(item_name:String) {
    self.item_name=item_name
}
mutating func setType(item_type:String) {
    self.item_type=item_type
}
mutating func setPrice(item_price:Double) {
    self.item_price=item_price
}
mutating func setQuantity(item_quantity:Int) {
    self.item_quantity=item_quantity
}
   
//getter functions
 func getName()->String {
    return self.item_name
    }
 func getType()->String {
        return self.item_type
    }
 func getPrice()->Double {
    return self.item_price
    }
 func getTax()->Double {
    return self.tax
    }
    
//function to compute tax
mutating func calculateTax() {
    
    switch self.item_type {
    case "raw": self.tax=0.125*self.item_price
        
    case "manufactured": self.tax=0.125*self.item_price + (0.02*(self.item_price+0.125*self.item_price))
        
    case "imported": self.tax=self.item_price*0.1
                     var surcharge:Double=0.0
                     let final_price=self.item_price+self.tax
                     if final_price<=100 {
                          surcharge=5
                     } else if final_price<=200 {
                          surcharge=10
                     } else {
                         surcharge=0.05*final_price
                    }
                    self.tax=self.tax+surcharge
    default: print("Type field not correct!")
    }
    
}
}
