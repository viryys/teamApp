//
//  Answer.swift
//  teamApp
//
//  Created by Alex on 08.11.2020.
//

struct Answer {
    let text: String
    let type: carType
}

enum carType: Character {
    case volkswagen = "🚗"
    case volvo = "🚙"
    case bmw = "🚘"
    case ferrari = "🏎"
    
    var definition: String {
        switch self {
        case .volkswagen:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .volvo:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .bmw:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .ferrari:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
