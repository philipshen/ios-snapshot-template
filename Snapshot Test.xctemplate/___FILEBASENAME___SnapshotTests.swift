//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest
import FBSnapshotTestCase

class ___VARIABLE_sceneName___SnapshotTests: FBSnapshotTestCase {
    
    var window: UIWindow!
    
    // MARK: Subject under test
    var sut: ___VARIABLE_sceneName___!
    
    // MARK: - Test lifecycle
    override func setUp() {
        super.setUp()
        recordMode = true
        window = UIWindow()
        setup___VARIABLE_sceneName___()
    }
    
    override func tearDown() {
        window = nil
        super.tearDown()
    }
    
    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }
    
    // MARK: - Setup
    func setup___VARIABLE_sceneName___() {
        let bundle = Bundle.main
        // Use this for storyboards
//        let storyboard = UIStoryboard(name: "___VARIABLE_sceneName___", bundle: bundle)
//        sut = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_sceneName___") as! ___VARIABLE_sceneName___
        // Use this for nibs
    }
    
    func testMatchesSnapshot() {
        FBSnapshotVerifyView(sut.view!)
    }
    
}
