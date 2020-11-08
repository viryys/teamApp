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
    static func getQuestions() -> [Question] {
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
}
