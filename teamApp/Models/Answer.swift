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
    case buttonPhone = "☎️"
    case Nokia = "📞"
    case Samsung = "📲"
    case Iphone = "📱"
    
    var definition: String {
        switch self {
        case .volkswagen:
            return "Тебе подходит Volkswagen - то, что по-проще и не ломается.. "
        case .volvo:
            return "Тебе подходит VOLVO - надежный, качесвтенный автобиль из Швеции"
        case .bmw:
            return "Тебе подходит лидер немецкого автомобилестроения - BMW. Мощность, стиль и скорость"
        case .ferrari:
            return "Тебе подходит Ferrari ! Гоночные и спортивные автомобили, быстрая скорость и уникальный дизайн! "
            
        case .buttonPhone:
            return "Тебе подходит любой кнопочный телефон - то, что по-проще и и где есть кнопки.. "
        case .Nokia:
            return "Тебе подходит Nokia - надежный, качесвтенный телефон-легенда"
        case .Samsung:
            return "Твой телефон Sumsung! Лидер Российского рынка!"
        case .Iphone:
            return "Тебе подходит  Iphone ! Стильный , мощный и дорогой гаджет! "
        }
    }
}
