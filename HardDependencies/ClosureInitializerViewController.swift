//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by Hassim, Muhammad Hanis on 28/08/2024.
//

import UIKit

class ClosureInitializerViewController: UIViewController {
    private let makeAnaltyics: () -> Analytics
    
    init(makeAnaltyics: @escaping () -> Analytics = { Analytics.shared }) {
        self.makeAnaltyics = makeAnaltyics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnaltyics().track(event: "viewDidAppear - \(type(of: self))")
    }

}
