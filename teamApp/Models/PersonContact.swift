//
//  PersonContact.swift
//  teamApp
//
//  Created by Руслан Битюков on 08.11.2020.
//

struct PersonContact {
    let name: String
    let sureName: String
    let phone: String
}

extension PersonContact {
    static func getContact() -> [PersonContact] {
        return [
            PersonContact(name: "Alex", sureName: "Efimov", phone: "89003232323"),
            PersonContact(name: "Ruslan", sureName: "Bityukov", phone: "8999323212"),
            PersonContact(name: "Ivan", sureName: "Aculov", phone: "87632123232")
        ]
    }
}
