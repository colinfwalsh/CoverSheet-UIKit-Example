//
//  ViewController.swift
//  CoverSheet-UIKit-Example
//
//  Created by Colin Walsh on 3/6/23.
//

import UIKit
import CoverSheet

class ViewController: CoverSheetController<DefaultSheetManager, DefaultSheetState> {
    
    var manager: DefaultSheetManager = DefaultSheetManager()
    
    let innerVC = UIViewController()
    let sheetVC = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(inner: innerVC, sheet: sheetVC)
        overrideManager(manager)
        overrideStates([.normal, .collapsed, .full, .cover])
        overrideAnimationValues(timing: 0.25, options: [.allowUserInteraction], springDamping: 1.5)
        updateSheet(shouldBlur: false, backgroundColor: .white)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        innerVC.view.backgroundColor = .gray
        
        manager.currentState = .normal
    }

}

