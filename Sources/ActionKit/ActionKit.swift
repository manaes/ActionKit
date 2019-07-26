import UIKit

public class Content Button: UIButton {
    
    typealias DidTapButton = (Button) -> ()
    
    public var didTouchUpInside: DidTapButton? {
        
        didSet {
            if didTouchUpInside != nil {
                addTarget(self, action: #selector(didTouchUpInside(sender:)), for: .touchUpInside)
            }
            else {
                removeTarget(self, action: #selector(didTouchUpInside(sender:)), for: .touchUpInside)
            }
        }
    }
    
    // MARK: - Actions
    
    @objc private func didTouchUpInside(sender: UIButton) {
        
        if let handler = didTouchUpInside {
            handler(self)
        }
    }
}
