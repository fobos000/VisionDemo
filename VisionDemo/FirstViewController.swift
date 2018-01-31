//
//  FirstViewController.swift
//  VisionDemo
//
//  Created by Ostap Horbach on 1/31/18.
//  Copyright © 2018 Ostap Horbach. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let detectionVC = DetectionViewController.shared
        addChildViewController(detectionVC)
        detectionVC.view.frame = view.bounds
        view.addSubview(detectionVC.view)
        detectionVC.didMove(toParentViewController: self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let detectionVC = DetectionViewController.shared
        detectionVC.willMove(toParentViewController: nil)
        detectionVC.view.removeFromSuperview()
        detectionVC.removeFromParentViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

