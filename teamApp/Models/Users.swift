//
//  Users.swift
//  teamApp
//
//  Created by Alex on 07.11.2020.
//

import Foundation

struct User {
    let name: String
    let password: String
}

extension User {
    static func getUsers() -> [User] {
        [
            User(name: "Alex", password: "easy"),
            User(name: "Tim", password: "hard")
        ]
    }
}
