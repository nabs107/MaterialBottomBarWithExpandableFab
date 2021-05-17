//
//  ViewController.swift
//  MaterialBottomBarWithExpandableFab
//
//  Created by Nabin Shrestha on 5/17/21.
//

import UIKit
import MaterialComponents
import LBTATools
import JJFloatingActionButton

class ViewController: UIViewController {
    
    fileprivate let actionButton = JJFloatingActionButton()
    
    lazy var containerView: UIView = UIView()
    
    lazy var bottomAppBarView: MDCBottomAppBarView = {
        let bottomAppBarView = MDCBottomAppBarView()
        bottomAppBarView.floatingButton.backgroundColor = .white
        bottomAppBarView.floatingButton.tintColor = .white
        bottomAppBarView.setFloatingButtonPosition(.trailing, animated: false)
        return bottomAppBarView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(containerView)
        containerView.fillSuperviewSafeAreaLayoutGuide()
        
        containerView.stack(
            UIView(),
            bottomAppBarView
        )
        
        let firstItem = JJActionItem()
        firstItem.titleLabel.text = "Phone"
        firstItem.buttonImage = UIImage(named: "phone_unfill")
        firstItem.buttonImageColor = .white
        firstItem.titleLabel.backgroundColor = .purple
        firstItem.buttonColor = .purple
        firstItem.action = { item in
            
        }
        
        let secondItem = JJActionItem()
        secondItem.titleLabel.text = "Video"
        secondItem.buttonImage = UIImage(named: "video_unfill")
        secondItem.buttonImageColor = .white
        secondItem.titleLabel.backgroundColor = .purple
        secondItem.buttonColor = .purple
        secondItem.action = { item in
            
        }
              
        actionButton.buttonColor = .purple
        actionButton.addItem(firstItem)
        actionButton.addItem(secondItem)
        
        bottomAppBarView.floatingButton.addSubview(actionButton)
        actionButton.fillSuperview()
        actionButton.display(inViewController: self, bottomInset: 30, trailingInset: 36)
    }


}

