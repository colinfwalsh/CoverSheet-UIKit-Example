//
//  ViewController.swift
//  CoverSheet-UIKit-Example
//
//  Created by Colin Walsh on 3/6/23.
//

import UIKit
import CoverSheet

class ViewController: CoverSheetController {
    
    let innerVC = UIViewController()
    let sheetVC = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(inner: innerVC, sheet: sheetVC)
        overrideStates([.minimized, .normal, .full, .cover])
        updateSheet(shouldBlur: false, backgroundColor: .white)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        innerVC.view.backgroundColor = .gray
    }

}

