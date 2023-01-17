//
//  UserModel.swift
//  Lists
//
//  Created by 123 on 16.01.23.
//

import Foundation
import UIKit

/* Сущность User с пропертями
 1. - first name
 2. - last name
 3. Age
 4. Sex
 5. Avatar
 6. Description - несколько строк, может быть разное количество строк
*/

struct User {
    var firstName: String
    var lastName: String
    var age: Int
    var sex: UIImage
    var avatar: UIImage
    var dexcription: String
}

// User Generator

struct UserGenerator {
    var users = [User]()
    
    mutating func setUser() {
        for _ in 1...30 {
            
            var user = User(firstName: "1", lastName: "1", age: 12, sex: UIImage(named: "queen")!, avatar: UIImage(named: "king")!, dexcription: "2")
                let names = ["Alex", "John", "Randy", "Kyle", "Bilbo", "Sarah", "Lena", "Tanya"]
                user.firstName = names.randomElement()!
                
                let fornames = ["Buchetti", "Lacetti", "Milos", "Rodriguez", "Sholz", "Bulloc", "Medvedkovic", "Irocco"]
                user.lastName = fornames.randomElement()!
                
                let age = 18...60
                user.age = age.randomElement()!
            
                let sex = [UIImage(named: "king"), UIImage(named: "queen")]
                user.sex = sex.randomElement()!!
                
                user.avatar = UIImage(named: "Elon")!
                let description = ["My wolf is in the zoo",
                "Jesus Lord please help us and save us",
                "Why do the people are so good? Maybe its because i'm too good?",
                "I know more than 5 thousand english words. And i'm still thinking that its not enough to communicate with native speakers fluently and correctly"]
                user.dexcription = description.randomElement()!
            
            users.append(user)
        }
    }
}


