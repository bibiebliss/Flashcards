//
//  ViewController.swift
//  Flashcards
//
//  Created by Babajide, Blessing on 2/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    class CreationViewController: UIViewController{
        var flashcardsController: ViewController!
        
        
        override func viewDidLoad(){
            super.viewDidLoad()
            
        }
    }
    
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
<<<<<<< HEAD
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
=======
>>>>>>> b37c4a77eb8cb25f50d1f8050f9264be7acfbf6f
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backLabel.layer.cornerRadius = 20.0
        frontLabel.layer.cornerRadius = 20.0
        card.layer.cornerRadius = 20.0
        backLabel.clipsToBounds = true
        frontLabel.clipsToBounds = true
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        button1.layer.borderWidth = 3.0
        button1.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        button1.layer.cornerRadius = 20.0
        button2.layer.borderWidth = 3.0
        button2.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        button2.layer.cornerRadius = 20.0
        button3.layer.borderWidth = 3.0
        button3.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        button3.layer.cornerRadius = 20.0
    }
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden){
            frontLabel.isHidden = false
        }
        else{
            frontLabel.isHidden = true
        }
    }
    
<<<<<<< HEAD
    func updateFlashcard(question: String, answer: String) {
        backLabel.text = answer
        frontLabel.text = question
    }
    
=======
>>>>>>> b37c4a77eb8cb25f50d1f8050f9264be7acfbf6f
    @IBAction func didTapOptionOne(_ sender: Any) {
        button1.isHidden = true
    }
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        button3.isHidden = true
    }
<<<<<<< HEAD
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        
        
    }
=======
>>>>>>> b37c4a77eb8cb25f50d1f8050f9264be7acfbf6f
}

