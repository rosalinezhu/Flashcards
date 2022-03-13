//
//  ViewController.swift
//  Flashcards
//
//  Created by Shijie Zhu on 2/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var card: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController  = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashardsController = self
        if segue.identifier == "EditSegue"{
            creationController.initalQueston = frontLabel.text
            creationController.initalAnswer = backLabel.text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
    }
    

    @IBAction func didTapOnFlashCard(_ sender: Any) {
        if frontLabel.isHidden == true{
            frontLabel.isHidden = false
        }
        else{
            frontLabel.isHidden = true
        }
        
    }
    func updateFlashcard(question: String, answer: String){
        frontLabel.text = question
        backLabel.text = answer
    }
    
}

