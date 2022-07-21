//
//  FoodLogViewController.swift
//  Final Project 3
//
//  Created by Jonathan Lai on 7/21/22.
//

import UIKit

class FoodLogViewController: UIViewController {

    @IBOutlet weak var calorieInfoLabel: UILabel!
    @IBOutlet weak var calorieGoal: UITextField!
    @IBOutlet weak var foodInput: UITextField!
    @IBOutlet weak var calorieInput: UITextField!
    @IBOutlet weak var addToListResponse: UILabel!
    @IBOutlet weak var calCalculatedresponse: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calorieInfoButton(_ sender: Any) {
        calorieInfoLabel.isHidden = false
    }
    
    var FoodDict:[String:Int] = [:]
    
    var n_items = 0
    
    @IBAction func AddtoListButton(_ sender: Any) {
        n_items = n_items + 1
        var food: String = foodInput.text ?? ""
        var cal: Int = Int(calorieInput.text ?? "") ?? 0
        FoodDict[food] = cal
        addToListResponse.text = "You add \(n_items) item(s) to your list."
        addToListResponse.isHidden = false
    }
    
    
//    var item_cal = 0
    
    
    @IBAction func calculateCalorieButton(_ sender: Any) {
        var total_cal = 0
        for (key, value) in FoodDict {
            var item_cal: Int = value
            total_cal += item_cal
        }
        var calGoal: Int = Int(calorieGoal.text ?? "") ?? 0
        if(calGoal > total_cal) {
            var calLeft = calGoal - total_cal
            calCalculatedresponse.text = "You have \(calLeft) calorie(s) until you reached the amount of calories you wanted to consume today."
        } else if (calGoal < total_cal) {
            var moreCal = total_cal - calGoal
            calCalculatedresponse.text = "You have exceeded the amount of calories you wanted to consume today by \(moreCal) calorie(s)."
        } else {
            calCalculatedresponse.text = "You have matched the amount of calories you wanted to consume today."
        }
        calCalculatedresponse.isHidden = false
    }
    

}
