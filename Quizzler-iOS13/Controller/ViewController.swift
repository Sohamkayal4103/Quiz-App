import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var timer = Timer();
    var quizBrain = QuizBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI();
    }
    
    @IBAction func answerButtonPresed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!;
        if(quizBrain.checkAnswer(userAnswer)){
            print("User Answered correctly");
            sender.backgroundColor = UIColor.green;
            quizBrain.nextQuestion(true);
        }
        else{
            print("User Answered Incorrectly");
            sender.backgroundColor = UIColor.red;
            quizBrain.nextQuestion(false);
        }
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self,   selector: (#selector(ViewController.updateUI)), userInfo: nil, repeats: false)
        //updateUI();
        
    }
    
    @objc func updateUI() {
        let progressFraction : Float = quizBrain.getProgress();
        progressBar.setProgress(progressFraction, animated: true);
        questionLabel.text = quizBrain.getQuestionText();
        scoreLabel.text = "Score: \(quizBrain.getScore())";
        trueButton.backgroundColor = UIColor.clear;
        falseButton.backgroundColor = UIColor.clear;
    }
    
    
}

