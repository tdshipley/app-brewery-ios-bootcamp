//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Thomas Shipley on 17/12/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}
