//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by Hassim, Muhammad Hanis on 28/08/2024.
//

import UIKit

class ClosureInitializerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }

}
