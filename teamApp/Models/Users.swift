//
//  Users.swift
//  teamApp
//
//  Created by Alex on 07.11.2020.
//

import Foundation

struct Users {
    let name: String
    let password: String
    
    static func logInUserOne() -> Users {
        Users(name: "Alex", password: "easy")
    }
    
    static func logInUserTwo() -> Users {
        Users(name: "Tim", password: "hard")
    }
    
    static func loginFalse() -> Users {
        Users(name:"", password: "")
    }
}
