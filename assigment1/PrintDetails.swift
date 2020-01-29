//
//  PrintDetails.swift
//  assigment1
//
//  Created by Somya on 22/01/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

class PrintDetails {
    func displayDetails(listOfItems:[ItemDetails]) {
        for i in listOfItems { // foreach
            if (i.getName()=="") {
                print ("Name field missing!")
                continue
            }
            if (i.getType()=="") {
                print ("Type field missing!")
                continue
            }
            var final_price:Double=0.0
            let price=i.getPrice()
            let tax=i.getTax()
            final_price=price+tax
            print ("-----------------------------------")
            print ("Item name is :\(i.getName())")
            print ("Item price is :\(price)")
            print ("Tax per item is :\(tax)")
            print ("Final price is :\(final_price)")
            print("-----------------------------------")
            
        }
    }
}
    
   
