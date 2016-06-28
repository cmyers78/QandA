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
    
    @IBOutlet weak var answer2Outlet: UIButton!
    
    @IBOutlet weak var answer3Outlet: UIButton!
    
    @IBOutlet weak var answer4Outlet: UIButton!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func logic() {
        if let pQ = self.passedQuestion {
            
            self.questionLabel.text = pQ.questionString
            
            if random == 1 {
                self.answer1Outlet.setTitle(pQ.answerString, forState: .Normal)
                
                self.answer2Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer3Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer4Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)

            }
            
            else if random == 2 {
                self.answer2Outlet.setTitle(pQ.answerString, forState: .Normal)
                
                self.answer1Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer3Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer4Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)

            }
            
            else if random == 3 {
                self.answer3Outlet.setTitle(pQ.answerString, forState: .Normal)
                
                self.answer1Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer2Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer4Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)

            }
            
            else {
                self.answer4Outlet.setTitle(pQ.answerString, forState: .Normal)
                
                self.answer1Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer2Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
                
                self.answer3Outlet.setTitle(answerArray[Int(arc4random_uniform(UInt32(answerArray.count)))], forState: .Normal)
            }
            
        }
        
        
        
        
    
    
    }

    @IBAction func Answer1Pressed(sender: UIButton) {
    }
    
}
