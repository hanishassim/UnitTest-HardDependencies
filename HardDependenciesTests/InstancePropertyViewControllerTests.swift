@testable import HardDependencies
import XCTest

final class InstancePropertyViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics() // Inject before loading the view so the replacement instance is ready before view execution
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
