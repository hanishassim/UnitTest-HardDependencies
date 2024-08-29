@testable import HardDependencies
import XCTest

final class ClosurePropertyViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        sut.loadViewIfNeeded()
        
        sut.makeAnalytics = { Analytics() } // inject analtyics before loading view so its ready before viewcontroller
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
