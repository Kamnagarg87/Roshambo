//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Kumar Gaurav on 8/27/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var systemValue: Int?
    var actualValue: Int?
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet weak var resultMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if self.systemValue == 2 && self.actualValue == 1 {
            self.resultImage.image = UIImage(named: "PaperCoversRock.jpg")
            self.resultMessage.text = "Paper covers rock! You loose"
        }
        else if self.systemValue == 3 && self.actualValue == 1 {
            self.resultImage.image = UIImage(named: "RockCrushesScissors.jpeg")
            self.resultMessage.text = "Rock crushes Scissors! You win"
        }
        else if self.systemValue == 1 && self.actualValue == 2 {
            self.resultImage.image = UIImage(named: "PaperCoversRock.jpg")
            self.resultMessage.text = "Paper covers rock! You win"
        }
        else if self.systemValue == 3 && self.actualValue == 2 {
            self.resultImage.image = UIImage(named: "ScissorsCutPaper.jpg")
            self.resultMessage.text = "Scissors cut paper! You loose"
        }
        else if self.systemValue == 2 && self.actualValue == 3 {
            self.resultImage.image = UIImage(named: "ScissorsCutPaper.jpg")
            self.resultMessage.text = "Scissors cut paper! You win"
        }
        else if self.systemValue == 1 && self.actualValue == 3 {
            self.resultImage.image = UIImage(named: "RockCrushesScissors.jpeg")
            self.resultMessage.text = "Rock crushes Scissors! You losse"
        }
        else {
            self.resultImage.image = UIImage(named: "itsATie.png")
            self.resultMessage.text = "Its a tie! No one wins"
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
               
        }
    }

    @IBAction func playTheGameAgain(_ sender: Any) {
        let gameViewController : GameViewConroller
        gameViewController=storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewConroller
        present(gameViewController, animated: true, completion: nil)
    }
    

}
