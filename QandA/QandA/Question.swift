//
//  Question.swift
//  QandA
//
//  Created by Christopher Myers on 6/27/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class Question: NSObject {
    
    var questionString : String = ""
    var answerString : String = ""
    
    init(question : String, answer: String) {
        
        self.questionString = question
        self.answerString = answer
        
    }
    
    

}
