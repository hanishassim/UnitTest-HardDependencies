@testable import HardDependencies
import XCTest

private class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics {
        Analytics()
    }
}

final class OverrideViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
