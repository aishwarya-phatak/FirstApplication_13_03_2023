//
//  ViewController.swift
//  FirstApplication_13_03_2023
//
//  Created by Vishal Jagtap on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    var colorDictionary : [String : String] = ["1" : "Yellow",
                                        "2" : "Red",
                                        "3" : "Green"]
    override func viewDidLoad() {
        super.viewDidLoad()
        basics()
    }
    
    func basics(){
        var i : Int
        i = 11
        print("The value of i \(i)")
        var x : Int = 20
        print("The value of x \(x)")
        let number = 20
        print("number -- \(number)")
        
        var name : String = "Vaishnavi"
        var lastName : String = "XYZ"
        var price : Double = 120.23
        var char : Character = "A"
        var value : Bool = true
        var weight : Float = 12.23
        
        var result = i + x
        print("Result : \(result)")
        print("\(name) -- \(lastName)")
        var fullName = name+lastName
        print(fullName)
        
        //Multiline strings
        var address = """
        Bitcode,
        Karve Road,
        Pune 411038
        """
        print(address)
        
        var numberTwo = Int()
        print(numberTwo)
        var numberThree = String()
        print(numberThree)
        
        //force unwrapping
        var num4 : Int? = 13       //Optional(13)
        print(num4! + 20)
        
        //nil coalesing
        var companyName : String?
        var company = companyName ?? "Bitcode Technologies"
        print(company)
        
        //traditional if - else
        var firstName : String?
        //firstName = "Shraddha"
        if(firstName != nil){
            print(firstName!)
        }else{
            print("The value found is nil")
        }
        
        //if let
        var color : String?
        //color = "Yellow"
        if let color1 = color {
            print(color1)
        } else {
            print("The value of color found is nil")
        }
    }
}
