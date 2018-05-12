//
//  ViewController.swift
//  mvctest
//
//  Created by Andrés Gamboa on 5/12/18.
//  Copyright © 2018 Andrés Gamboa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier:"micelda")
        cell.textLabel?.text = questions.list [ indexPath.row ].text
        if (questions.list[indexPath.row].answer) {
            cell.detailTextLabel?.text = "SI"
        } else {
            cell.detailTextLabel?.text = "NO"
        }
        return cell
    }
    
    var questions = QuestionList()
    
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var QuestionLabel: UILabel!
    var currentAnswer = Bool()
    var currentQuestionShowing = Question(text: "", answer: false)
    var results = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setQuestion() {
        let unseenQuestions = questions.list.filter { $0.seen == false }
        if (unseenQuestions.count > 0) {
            currentQuestionShowing = unseenQuestions[Int(arc4random_uniform(UInt32(unseenQuestions.count)))]
            QuestionLabel.text = currentQuestionShowing.text
            currentQuestionShowing.seen = true
            if(unseenQuestions.count == 1) {
                nextQuestion.setTitle("Resultados", for: .normal)
            }
        }
    }
    
    func answerQuestion(answer: Bool, button: UIButton) {
        currentAnswer = answer
        button.alpha = 0.5
        if (answer == true) {
            noButton.alpha = 1
        } else {
            yesButton.alpha = 1
        }
    }
    
    func nextOrResult(){
        if(currentAnswer == currentQuestionShowing.answer) {
            results = results + 1
        }
        yesButton.alpha = 1
        noButton.alpha = 1
        setQuestion()
    }
    
    @IBAction func answerNo(_ sender: UIButton) {
        answerQuestion(answer: false, button: sender)
    }
    
    @IBAction func answerYes(_ sender: UIButton) {
        answerQuestion(answer: true, button: sender)
    }
    
    @IBAction func nextClick(_ sender: Any) {
        nextOrResult()
    }

}

