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


enum ResponseTypeSecond {
    case single
    case multiple
    case ranged
}

struct QuestionSecond {
    let text: String
    let type: phoneType
    let answers: [AnswerSecond]
}

//extension QuestionSecond {
//    static func getQuestionsSecond() -> [QuestionSecond] {
//        return [
//            QuestionSecond(
//                text: "Как часто вы пользуютесь телефоном?",
//                type: .single,
//                answers: [
//                    AnswerSecond(text: "Редко", type: .buttonPhone),
//                    AnswerSecond(text: "Пару часов в день", type: .Nokia),
//                    AnswerSecond(text: "Пол дня ", type: .Samsung),
//                    AnswerSecond(text: "Сутки напролет", type: .Iphone)
//                ]
//            ),
//            QuestionSecond(
//                text: "Какие функции часто используешь в телефоне?",
//                type: .multiple,
//                answers: [
//                    AnswerSecond(text: "Только звонки", type: .buttonPhone),
//                    AnswerSecond(text: "Колоть орехи", type: .Nokia),
//                    AnswerSecond(text: "Смотреть Ютуб", type: .Samsung),
//                    AnswerSecond(text: "Сидеть в Инстаграм", type: .Iphone)
//                ]
//            ),
//            QuestionSecond(
//                text: "какая стоимость телефона тебе подходит по бюджету?",
//                type: .ranged,
//                answers: [
//                    AnswerSecond(text: "До 1.000р", type: .buttonPhone),
//                    AnswerSecond(text: "От 1.000р - 8.000р", type: .Nokia),
//                    AnswerSecond(text: "От 30.000 - 80.000р", type: .Samsung),
//                    AnswerSecond(text: "Свыше 80.000р", type: .Iphone)
//                ]
//            )
//        ]
//    }
//}
