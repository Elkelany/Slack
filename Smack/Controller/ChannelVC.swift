//
//  ChannelVC.swift
//  Smack
//
//  Created by macOS on 4/8/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

}
