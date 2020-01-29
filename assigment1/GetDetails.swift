//
//  GetDetails.swift
//  assigment1
//
//  Created by Somya on 22/01/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

class GetDetails {
    
    //function getItemDetails
    func getItemDetails(Items:[String])->ItemDetails {
        let arrayCount=Items.count
        var item_name:String=""
        var item_type:String=""
        var item_price:Double?=0.0
        var item_quantity:Int?=0
        var index=0
        while index<(arrayCount-1){
            if ((Items[index]=="-name") && !(Items[index+1]=="-type") && !(Items[index+1]=="-price") && !(Items[index+1]=="-quantity")) {
                item_name=Items[index+1]
                index=index+1;
            }
            else if ((Items[index]=="-type") && (!(Items[index+1]=="-name") || !(Items[index+1]=="-price") || !(Items[index+1]=="-quantity"))) {
                item_type=Items[index+1]
                index=index+1;
            }
            else if ((Items[index]=="-price") && !(Items[index+1]=="-name") && !(Items[index+1]=="-type") && !(Items[index+1]=="-quantity")) {
                let price:Double?=Double(Items[index+1])
                item_price=price
                index=index+1;
            }
           else if ((Items[index]=="-quantity") && !(Items[index+1]=="-name") && !(Items[index+1]=="-type") && !(Items[index+1]=="-price")) {
                let quantity:Int?=Int(Items[index+1])
                item_quantity=quantity
                index=index+1;
            }
            index=index+1
        }
        var item=ItemDetails()
        item.setName(item_name: item_name)
        item.setType(item_type:item_type)
        item.setPrice(item_price:item_price!)
        item.setQuantity(item_quantity:item_quantity!)
        item.calculateTax()
        return item
    }
}
            
            
            
            
           


