//
//  Question.swift
//  mvctest
//
//  Created by Andrés Gamboa on 5/12/18.
//  Copyright © 2018 Andrés Gamboa. All rights reserved.
//

import Foundation

class Question {
    var text: String
    var answer: Bool
    var seen: Bool
    
    init(text: String, answer: Bool) {
        self.text = text
        self.answer = answer
        self.seen = false
    }
    
}
