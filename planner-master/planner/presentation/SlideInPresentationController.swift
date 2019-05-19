

import Foundation
import UIKit

class SlideInPresentationController: UIPresentationController {
    
    fileprivate var dimmingView: UIView!
    fileprivate let dimmingViewColor = #colorLiteral(red: 0.6101596951, green: 0.1539793909, blue: 0.6897916198, alpha: 1).cgColor
    fileprivate let newViewControllerHeight: CGFloat = 281
    
    override init(presentedViewController: UIViewController,
                  presenting presentingViewController: UIViewController?) {
        
        super.init(presentedViewController: presentedViewController,
                   presenting: presentingViewController)
        
        setupDimmingView()
    }
    
    override func presentationTransitionWillBegin() {
        containerView?.insertSubview(dimmingView, at: 0)
        
        if let container = containerView {
            dimmingView.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
            dimmingView.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
            dimmingView.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
            dimmingView.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        }
        
        guard let coordinator = presentedViewController.transitionCoordinator else {
            dimmingView.alpha = 1.0
            return
        }
        
        coordinator.animate(alongsideTransition: { _ in
            self.dimmingView.alpha = 1.0
        })
    }
    
    override func dismissalTransitionWillBegin() {
        guard let coordinator = presentedViewController.transitionCoordinator else {
            dimmingView.alpha = 0.0
            return
        }
        
        coordinator.animate(alongsideTransition: { _ in
            self.dimmingView.alpha = 0.0
        })
    }
    
    override func containerViewWillLayoutSubviews() {
        presentedView?.frame = frameOfPresentedViewInContainerView
    }
    
    override func size(forChildContentContainer container: UIContentContainer,
                       withParentContainerSize parentSize: CGSize) -> CGSize {
        
        return CGSize(width: parentSize.width, height: newViewControllerHeight)
    }
    
    override var frameOfPresentedViewInContainerView: CGRect {
        
        var frame: CGRect = .zero
        frame.size = size(forChildContentContainer: presentedViewController,
                          withParentContainerSize: containerView!.bounds.size)
        
        frame.origin.y = containerView!.frame.height - presentedViewController.view.frame.height
        return frame
    }
    
}

private extension SlideInPresentationController {
    
    func setupDimmingView() {
        dimmingView = UIView()
        dimmingView.translatesAutoresizingMaskIntoConstraints = false
      
        dimmingView.alpha = 0.0
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:)))
        dimmingView.addGestureRecognizer(recognizer)
    }
    
    @objc dynamic func handleTap(recognizer: UITapGestureRecognizer) {
        presentingViewController.dismiss(animated: true)
    }
    
}
