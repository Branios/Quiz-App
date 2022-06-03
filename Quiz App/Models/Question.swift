//
//  Question.swift
//  Quiz App
//
//  Created by VK on 03.06.2022.
//

import Foundation

struct Question {
    let title: String
    let answer: [Answer]
    let type: ResponseType
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "What food do you like?",
                answer: [
                    Answer(title: "Steak", animal: .dog),
                    Answer(title: "Fish", animal: .cat),
                    Answer(title: "Carrot", animal: .rabbit),
                    Answer(title: "Corn", animal: .turtle),
                ],
                type: .single
            ),
            Question(
                title: "What do you like the most?",
                answer: [
                    Answer(title: "Swim", animal: .dog),
                    Answer(title: "Sleep", animal: .cat),
                    Answer(title: "Hug", animal: .rabbit),
                    Answer(title: "Eat", animal: .turtle)
                ],
                type: .multiple
            ),
            Question(
                title: "Do you like car rides?",
                answer: [
                    Answer(title: "I hate it", animal: .cat),
                    Answer(title: "I'm nervous", animal: .rabbit),
                    Answer(title: "I don't notice", animal: .turtle),
                    Answer(title: "I love it", animal: .dog)
                ],
                type: .ranged
            )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "dog description"
        case .cat:
            return "cat description"
        case .rabbit:
            return "rabbit description"
        case .turtle:
            return "turtle description"
        }
    }
}
