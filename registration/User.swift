//
//  User.swift
//  registration
//
//  Created by Никита Горбунов on 22.01.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "user", password: "password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let lastName: String
    let image: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Nikita", lastName: "Gorbunov", image: "photo1")
    }
}
