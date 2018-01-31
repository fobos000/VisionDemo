//
//  DetectionViewController.swift
//  VisionDemo
//
//  Created by Ostap Horbach on 1/31/18.
//  Copyright © 2018 Ostap Horbach. All rights reserved.
//

import UIKit

class DetectionViewController: UIViewController {
    @IBOutlet weak var cameraView: CameraView!
    
    static let shared = DetectionViewController(nibName: nil, bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cameraView.startCamera()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
