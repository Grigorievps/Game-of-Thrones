//
//  Question.swift
//  Game of Thrones
//
//  Created by Павел Григорьев on 31/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

struct Question {
    var text: String
    var answer: [Answer]
    
    static func loadQuestion() -> [Question] {
        return [
            Question(text: "Что для вас в жизни имеет наибольшее значение?",
                 answer: [
                    Answer(text: "Власть", type: .cersei),
                    Answer(text: "Справедливость", type: .arya),
                    Answer(text: "Храбрость", type: .daenerys),
                    Answer(text: "Честь и долг", type: .jon)
            ]),
            Question(text: "Идет битва за ваши владения. Чем займетесь?",
                     answer: [
                        Answer(text: "Буду впереди на лихом коне!", type: .jon),
                        Answer(text: "Останусь в тылу и буду раздавать ценные указания", type: .tyrion),
                        Answer(text: "Проберусь в стан врага и буду шпионить", type: .arya),
                        Answer(text: "Испепелю их!", type: .daenerys)
                ]),
            Question(text: "Как бы вы хотели провести отпуск?",
                     answer: [
                        Answer(text: "За философскими рассуждениями в приятной компании", type: .tyrion),
                        Answer(text: "С любимым человеком, а где, не важно", type: .jon),
                        Answer(text: "Добиваясь спортивных высот", type: .arya),
                        Answer(text: "Мне не нужен отпуск", type: .daenerys)
                ]),
            Question(text: "Как думаете, кем считают вас окружающие?",
                     answer: [
                        Answer(text: "Лидером", type: .daenerys),
                        Answer(text: "Интриганом", type: .cersei),
                        Answer(text: "Одиночкой", type: .arya),
                        Answer(text: "Красавчиком", type: .jaime)
                ]),
            Question(text: "Как думаете, кем считают вас окружающие?",
                     answer: [
                        Answer(text: "Лидером", type: .daenerys),
                        Answer(text: "Интриганом", type: .cersei),
                        Answer(text: "Одиночкой", type: .arya),
                        Answer(text: "Красавчиком", type: .jaime)
                ]),
        ]
    }
}
