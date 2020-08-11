import UIKit

public final class CircleProgressView: UIView, ProgressView {
       
    required public init(frame: CGRect,
         backgroundColor: UIColor,
         strokeWidth: Double,
         strokeColor: UIColor) {
        
        
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func setProgress(_ percentage: Double) {
        
    }
    
    public func setFinished() {
        
    }
}
