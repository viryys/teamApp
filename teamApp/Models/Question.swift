//
//  Question.swift
//  teamApp
//
//  Created by Alex on 08.11.2020.
//

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestionsCar() -> [Question] {
        return [
            Question(
                text: "Какую скорость вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "80-100км/ч", type: .volkswagen),
                    Answer(text: "120-140км/ч", type: .volvo),
                    Answer(text: "150-170км/ч", type: .bmw),
                    Answer(text: "170-190км/ч", type: .ferrari)
                ]
            ),
            Question(
                text: "Самое важное для тебя в автомобиле?",
                type: .multiple,
                answers: [
                    Answer(text: "Простота", type: .volkswagen),
                    Answer(text: "Безопаность", type: .volvo),
                    Answer(text: "Характер", type: .bmw),
                    Answer(text: "Скорость", type: .ferrari)
                ]
            ),
            Question(
                text: "какая стоимость авто тебе подходит по бюджету?",
                type: .ranged,
                answers: [
                    Answer(text: "До 500.000р", type: .volkswagen),
                    Answer(text: "От 500.000-2.000.000р", type: .volvo),
                    Answer(text: "От 2.000.000-10.500.00р", type: .bmw),
                    Answer(text: "Свыше 15.000.000р", type: .ferrari)
                ]
            )
        ]
    }
    
    static func getQuestionsPhone() -> [Question] {
        return [
            Question(
                text: "Как часто вы пользуютесь телефоном?",
                type: .single,
                answers: [
                    Answer(text: "Редко", type: .buttonPhone),
                    Answer(text: "Пару часов в день", type: .Nokia),
                    Answer(text: "Пол дня ", type: .Samsung),
                    Answer(text: "Сутки напролет", type: .Iphone)
                ]
            ),
            Question(
                text: "Какие функции часто используешь в телефоне?",
                type: .multiple,
                answers: [
                    Answer(text: "Только звонки", type: .buttonPhone),
                    Answer(text: "Колоть орехи", type: .Nokia),
                    Answer(text: "Смотреть Ютуб", type: .Samsung),
                    Answer(text: "Сидеть в Инстаграм", type: .Iphone)
                ]
            ),
            Question(
                text: "какая стоимость телефона тебе подходит по бюджету?",
                type: .ranged,
                answers: [
                    Answer(text: "До 1.000р", type: .buttonPhone),
                    Answer(text: "От 1.000р - 8.000р", type: .Nokia),
                    Answer(text: "От 30.000 - 80.000р", type: .Samsung),
                    Answer(text: "Свыше 80.000р", type: .Iphone)
                ]
            )
        ]
    }
}
