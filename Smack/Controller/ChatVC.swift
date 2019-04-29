//
//  ChatVC.swift
//  Smack
//
//  Created by macOS on 4/8/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // Check for the forced upwrapping of panGestureRecognizer
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        // Check for the forced unwrapping of tapGestureRecognizer
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!)
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail { (_) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            }
        }
    }

}
