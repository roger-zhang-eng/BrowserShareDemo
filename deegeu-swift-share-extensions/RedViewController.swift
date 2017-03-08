//
//  RedViewController.swift
//  deegeu-swift-share-extensions
//
//  Created by Daniel Spiess on 10/23/15.
//  Copyright © 2015 Daniel Spiess. All rights reserved.
//

import UIKit
import Photos

class RedViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let suiteName = "group.com.demo.ent.browsershare"
    let redDefaultKey = "RedColorImage"
    
    // Simply reads the selected image from NSUserDefaults and displays the
    // image
    override func viewDidLoad() {
        super.viewDidLoad()
        if let prefs = UserDefaults(suiteName: suiteName) {
            if let imageData = prefs.object(forKey: redDefaultKey) as? Data {
                DispatchQueue.main.async(execute: { () -> Void in
                    self.imageView.image = UIImage(data: imageData)
                })
            }
        }
    }
}
