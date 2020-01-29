//
//  main.swift
//  assigment1
//
//  Created by Somya on 22/01/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

var listOfItems=[ItemDetails]()
var choice:String = "no"
repeat {
    print("Enter details of the new item in the format -name name -type type -price price -quantity quantity")
    if let input=readLine() {
        let array=input.components(separatedBy:" ")
        let gdetails=GetDetails()
        let item=gdetails.getItemDetails(Items: array)
        listOfItems.append(item)
        print("Do you want to enter another item details? (yes/no)")
        choice=(readLine())!
    } else {
        print ("Input not provided!!")
    }
    
} while choice == "yes"
let printd=PrintDetails()
printd.displayDetails(listOfItems: listOfItems)

