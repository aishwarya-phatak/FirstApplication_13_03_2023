//
//  ViewController.swift
//  FirstApplication_13_03_2023
//
//  Created by Vishal Jagtap on 16/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    //homogenous array
    var names : [String] = ["Shraddha","Susmita","Vaishnavi","Priyanka"]
    var numbers = [12,34,45,46,89,90]
    
    //heterogenous array
    var studentInfo : [Any] = ["12",23,"Priyanka",34.23]
    
    //homogeneous dictionary
    var colorDictionary : Dictionary = ["1" : "Yellow",
                                        "2" : "Red",
                                        "3" : "Green"]
    
    /*var colorDictionary : [String : String] = ["1" : "Yellow",
                                        "2" : "Red",
                                        "3" : "Green"]*/
    /*var colorDictionary = ["1" : "Yellow",
                            "2" : "Red",
                            "3" : "Green"]*/
    
    var dictionary : [Int : Int] = [1 : 102,
                                    2 : 103,
                                    3 : 104]
    var d1 : [Int : String] = [1 : "Tushar",
                               2 : "Rutik",
                               3 : "Vivek"]
    
    //heterogenous dictionary
    var studentDictionary : [String : Any] = ["firstName" : "Tushar", "rollNumber" : 1, "fees" : 2390.07]

    override func viewDidLoad() {
        super.viewDidLoad()
        basics()
        basics2()
        basics4()
        arrays()
        var r : Int = addition(n1: 10, n2: 10)
        print(r)
        //checkingKey(key: "1")
       
    }
    
    func basics2(){
        for eachNumber in stride(from: 1, to: 10, by: 2){
            print(eachNumber * 2)
        }
        
        for i in stride(from: 10, through: 20, by: 3){
            print(i + 5)
        }
    }
    func arrays(){
        var technologies : [String] = ["C","Cpp","java","iOS","Android"]
        var numbers = [1,2,34,45,12]
        var array1 : [Any] = ["Tushar",23.34,60]        //heterogenous array
        
        for eachNum in numbers{
            print(eachNum * 10)
        }
        array1.forEach { i in
            print(i)
        }
    }
    
    func basics4(){
        enum technologies {
            case iOS
            case Android
            case java
        }
        
        switch(technologies.iOS){
            case .iOS : print("iOS Selected")
                
            case .Android : print("Android Selected")
           
            case .java : print("java Selected")
            
            default :
                print("Default Case")
        }
        
    var laptop = (name : "Mac",price : 100000.00,year : 2023) //tuple
        
    }
    
    func addition(n1 : Int, n2 : Int)->Int{
        return n1 + n2;
    }
    
    func closures(){
        var additionClosure1 : (Int, Int)-> Int = {
            (x,y) in
            return x + y
        }
        
        var addClosure = {
            (x : Int,y : Int)-> Int in
            x + y
        }
        
        var square = {(number : Int) in number * number}
        let res1 =  additionClosure1(12,12)
        let res2 = addClosure(13,10)
        
        print(res1)
        print(res2)
        let result = square(10)
        print(result)
    }
    
    func basics(){
        //for...in loops
        for n in numbers{
            print("n is \(n)")
        }
        
        //forEach
        numbers.forEach { n in
            print(n * 5)
        }
        
        //ranges
        for number in 50...60{
            if(number%2 == 0){
                print("number : \(number) -- Even")
            } else {
                print("number is \(number) -- Odd")
            }
        }
        
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
    
    
    func checkingKey(key : String){
        
        guard let valueOfKeyFound = colorDictionary[key] else {
            print("The key not found")
            return
        }
        print("The key is \(key) and the value for key \(valueOfKeyFound)")
    }
}
