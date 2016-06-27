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
    
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let pQ = self.passedQuestion {
            self.questionLabel.text = pQ.questionString
        }
    
    
    }

    
}
