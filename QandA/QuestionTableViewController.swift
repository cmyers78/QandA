//
//  QuestionTableViewController.swift
//  QandA
//
//  Created by Christopher Myers on 6/27/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    var questionArray = [Question]()
    
    var currentQuestion : Question?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.seedArray()

    }
    
    func seedArray() {
        
        let q1 = Question(question: "What is the capital of Georgia?", answer: "Atlanta")
        self.questionArray.append(q1)
        
        let q2 = Question(question: "Where to the Georgia Bulldogs play?", answer: "Sanford Stadium")
        self.questionArray.append(q2)
        
        let q3 = Question(question: "Who helped found Apple?", answer: "Steve Wozniack")
        self.questionArray.append(q3)
        
        let q4 = Question(question: "How should a steak be cooked?", answer: "Medium-Rare")
        self.questionArray.append(q4)
        
        let q5 = Question(question: "Who is Hank Hill's son?", answer: "Bobby")
        self.questionArray.append(q5)
        
        let q6 = Question(question: "Where was Luke Skywalker born?", answer: "Tatooine")
        self.questionArray.append(q6)
        
        
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.questionArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        self.currentQuestion = self.questionArray[indexPath.row]
        
        cell.textLabel?.text = currentQuestion?.questionString
        
        // Configure the cell...

        return cell
    }
 
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.currentQuestion = self.questionArray[indexPath.row]
        
        performSegueWithIdentifier("AnswerSegue", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AnswerSegue" {
            
            
            
        } else {
            print("Your segue identifere is incorrect")
        }
    }

}
