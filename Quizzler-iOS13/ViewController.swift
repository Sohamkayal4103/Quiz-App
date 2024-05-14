//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quizQuestions = ["Is 2 + 4 = 6 ?","Is 7, the square root of 49?", "Is 2 a prime number?", "Are 1,3,and 5 in arithmatic progression?"];
    var ct = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quizQuestions[ct];
    }
    
    @IBAction func answerButtonPresed(_ sender: UIButton) {
        ct += 1;
        if(ct >= quizQuestions.count){
            ct = 0;
        }
        questionLabel.text = quizQuestions[ct];
        
    }
    
    
}

