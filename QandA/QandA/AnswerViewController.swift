//
//  AnswerViewController.swift
//  QandA
//
//  Created by Christopher Myers on 6/27/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var passedQuestion : Question?
    
    var random = arc4random_uniform(4) + 1
    
    let answerArray = ["Bluth", "John Stossel", "Hotdogs", "Bobby Dodd Stadium", "Denver", "Joseph", "Dooley", "Medium-Well"]
    
    @IBOutlet weak var answer1Outlet: UIButton!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        if let pQ = self.passedQuestion {
            self.questionLabel.text = pQ.questionString
            self.answer1Outlet.setTitle(pQ.answerString, forState: .Normal)
            
        }
        
        
    
    
    }

    @IBAction func Answer1Pressed(sender: UIButton) {
    }
    
}
