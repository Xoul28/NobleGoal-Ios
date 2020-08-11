import UIKit

public protocol ProgressView: UIView {
    
    init(frame: CGRect,
         backgroundColor: UIColor,
         strokeWidth: Double,
         strokeColor: UIColor)
    func setProgress(_ percentage: Double)
    func setFinished()
}
