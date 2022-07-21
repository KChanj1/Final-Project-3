import UIKit

class MoodJournalViewController: UIViewController {

    @IBOutlet weak var responsetoMoodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func amazingButton(_ sender: Any) {
        responsetoMoodLabel.text = "That's great! Hope you continue to have an amazing day."
        responsetoMoodLabel.isHidden = false
    }
    @IBAction func mehButton(_ sender: Any) {
        responsetoMoodLabel.text = "That's not too bad."
        responsetoMoodLabel.isHidden = false
    }
    @IBAction func terribleButton(_ sender: Any) {
        responsetoMoodLabel.text = "Aww. That must suck. I hope it gets better."
        responsetoMoodLabel.isHidden = false
    }
  
    
}
