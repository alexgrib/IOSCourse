

import UIKit

class MainHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        layer.shadowColor = #colorLiteral(red: 0.6101596951, green: 0.1539793909, blue: 0.6897916198, alpha: 1).cgColor
        layer.shadowOpacity = 0.15
        layer.shadowRadius = 20
        layer.shadowPath = nil
    }
}
