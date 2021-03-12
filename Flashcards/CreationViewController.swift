//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Babajide, Blessing on 3/8/21.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!

    @IBOutlet weak var extraAnswerOne: UITextField!
    @IBOutlet weak var extraAnswerTwo: UITextField!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    var initialQuestion: String?
    var initialAnswer: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     */
    
     @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
     }
     
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text!
        let answerText = answerTextField.text!
        let answer1 = extraAnswerOne.text!
        let answer2 = extraAnswerTwo.text!
        
        if questionText == nil || answerText == nil || questionText.isEmpty || answerText.isEmpty{
            let alert = UIAlertController(title: "Missing text", message: "You need to enter both a question and an answer", preferredStyle: UIAlertController.Style .alert)
            present(alert, animated: true)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
        }
        else{
            print(answerText)
            flashcardsController.updateFlashcard(question: questionText, answer: answerText, extraAnswerOne: answer1, extraAnswerTwo: answer2)
        
            dismiss(animated: true)
    }

    }
    
}
