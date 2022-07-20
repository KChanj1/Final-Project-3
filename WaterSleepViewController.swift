//
//  WaterSleepViewController.swift
//  Final Project 3
//
//  Created by Jonathan Lai on 7/20/22.
//

import UIKit

class WaterSleepViewController: UIViewController {

    // SLEEP LOG
    @IBOutlet weak var SleepInfoLabel: UILabel!
    @IBOutlet weak var SleepInput: UITextField!
    @IBOutlet weak var SleepResponse: UILabel!
    
    // WATER LOG
    @IBOutlet weak var WeightInput: UITextField!
    @IBOutlet weak var WaterInput: UITextField!
    @IBOutlet weak var WaterResponse: UILabel!
    @IBOutlet weak var WaterInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // SLEEP LOG
    
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
    
    // WATER LOG
    
    
    var enoughWater = ["You reached the goal!", "Great! You drank enough today.", "Nice! That's the right amount."]
    var moreWater = ["Wow! That's more than enough!", "That's awesome! Keep it up!", "Great. Keep doing this."]
    
    @IBAction func checkWaterButton(_ sender: Any) {
        var half_weight = 0
        if let weight = WeightInput.text {
            let int_weight = Int(weight) ?? 0
            if(int_weight % 2 == 0) {
                half_weight = int_weight / 2;
            } else {
                half_weight = (int_weight / 2) + 1
            }
        }
        
        if let waterDrank = WaterInput.text {
            var int_waterDrank = Int(waterDrank) ?? 0
            if(int_waterDrank < half_weight) {
                var waterLeft = half_weight - int_waterDrank
                WaterResponse.text = "You need to drink \(waterLeft) ounces to reach the daily amount of water drank."
            } else if (int_waterDrank == half_weight) {
                WaterResponse.text = enoughWater[rand_n]
            } else {
                WaterResponse.text = moreWater[rand_n]
            }
        }
        WaterResponse.isHidden = false
        
    }
    @IBAction func WaterInfoButton(_ sender: Any) {
        WaterInfoLabel.isHidden = false
    }

}
