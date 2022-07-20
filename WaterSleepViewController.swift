//
//  WaterSleepViewController.swift
//  Final Project 3
//
//  Created by Jonathan Lai on 7/20/22.
//

import UIKit

class WaterSleepViewController: UIViewController {


    @IBOutlet weak var SleepInfoLabel: UILabel!
    @IBOutlet weak var SleepInput: UITextField!
    @IBOutlet weak var SleepResponse: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SleepInfoButton(_ sender: Any) {
        SleepInfoLabel.isHidden = false
    }
    
    var lessSleep = ["You should probably sleep more.", "Maybe sleep a couple more hours tomorrow.", "Almost there! Just a few more hours."]
    var okSleep = ["That's a solid amount of sleep.", "Good job! You got a good amount of sleep.", "Nice. Keep getting that amount of sleep."]
    var moreSleep = ["Wow, that's more than enough.", "You are getting more than enough sleep. Congrats!", "Amazing! That is a lot of sleep."]
    
    var rand_n = Int.random(in: 0..<3)
    
    @IBAction func checkSleepButton(_ sender: Any) {
        if let n_hours = SleepInput.text {
            let nint_hours = Int(n_hours) ?? 0
            if(nint_hours < 9) {
                SleepResponse.text = lessSleep[rand_n]
            } else if (nint_hours == 9 || nint_hours == 10) {
                SleepResponse.text = okSleep[rand_n]
            } else {
                SleepResponse.text = moreSleep[rand_n]
            }
        }
        SleepResponse.isHidden = false
    }

}
