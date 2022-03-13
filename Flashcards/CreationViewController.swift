//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Shijie Zhu on 3/12/22.
//

import UIKit

class CreationViewController:
    UIViewController {
    var flashardsController: ViewController!
    
       @IBOutlet weak var userQuestion: UITextField!
       @IBOutlet weak var userAnswer: UITextField!
       var initalQueston: String?
       var initalAnswer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userQuestion.text = initalQueston
        userAnswer.text = initalAnswer
    }

    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    

    @IBAction func didTapOnDone(_ sender: Any) {
        let inputQueston = userQuestion.text
        let inputAnswer = userAnswer.text
        if inputQueston == nil || inputAnswer == nil || inputQueston!.isEmpty || inputAnswer!.isEmpty {
            let alert = UIAlertController(title: "Missing Text", message: "Please enter both a question and an answer" , preferredStyle: .alert)
            present(alert, animated: true)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
        }
        else{
            flashardsController.updateFlashcard(question: inputQueston!, answer: inputAnswer!)
            dismiss(animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
