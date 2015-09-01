//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by jason on 15/9/1.
//  Copyright (c) 2015年 JasonAi. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    var imageName: String?
    
    @IBOutlet weak var beatyView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if imageName != nil{
            beatyView.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
