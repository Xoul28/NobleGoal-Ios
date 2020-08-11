import UIKit

class ChallengesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var challenges = [Challenge]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        mockViewModels()
    }
    
    func mockViewModels() {
        for i in 1..<100 {
            challenges.append(Challenge(id: i,
                                        goalTitle: "подтягиваний",
                numberCompleted: i - 1,
                finishDate: Date(),
                startDate: Date()))
        }
    }

}

extension ChallengesViewController: UICollectionViewDelegate { }

extension ChallengesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        challenges.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChallengeCell", for: indexPath) as? ChallengeCell {
            cell.setup(challenges[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}

