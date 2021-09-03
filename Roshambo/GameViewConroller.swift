//
//  ViewController.swift
//  Roshambo
//
//  Created by Kumar Gaurav on 8/27/21.
//

import UIKit

class GameViewConroller: UIViewController {
    
    @IBOutlet var rockButton : UIButton!
   

    // randomly generates a Int from 1 to 6
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickOnRockButton(_ sender: Any) {
        let resultViewController : ResultViewController
        resultViewController = storyboard?.instantiateViewController(withIdentifier: "resultVC") as! ResultViewController
        
        resultViewController.systemValue = randomDiceValue()
        resultViewController.actualValue = 1
        
        present(resultViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func clickOnPaperButton(_ sender: Any) {
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "resultSegue" {
            let resultViewController = segue.destination as! ResultViewController

            resultViewController.systemValue = randomDiceValue()
            resultViewController.actualValue = 2
        }
        else {
            let resultViewController = segue.destination as! ResultViewController

            resultViewController.systemValue = randomDiceValue()
            resultViewController.actualValue = 3
        }
    }

}

