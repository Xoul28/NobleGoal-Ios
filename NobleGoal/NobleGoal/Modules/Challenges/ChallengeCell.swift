import UIKit

class ChallengeCell: UICollectionViewCell {
    
    @IBOutlet weak var numberToCompleteLabel: UILabel!
    @IBOutlet weak var goalTitleTextView: UITextView!
    
    func setup(_ challenge: Challenge) {
        numberToCompleteLabel.text = "\(challenge.numberCompleted)"
        goalTitleTextView.text = challenge.goalTitle
        self.backgroundColor = UIColor.gray
    }
}
