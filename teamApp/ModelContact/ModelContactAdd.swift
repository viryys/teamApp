//
//  ModelContactAdd.swift
//  teamApp
//
//  Created by Руслан Битюков on 07.11.2020.
//

struct Persona {
    let name: String
    let surname: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
