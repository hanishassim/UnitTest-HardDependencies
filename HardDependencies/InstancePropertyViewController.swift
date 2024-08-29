//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by Hassim, Muhammad Hanis on 28/08/2024.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    lazy var analytics = Analytics.shared // lazy to give opportunity to inject different instance on initial execution

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }

}
