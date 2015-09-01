//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by jason on 15/9/1.
//  Copyright (c) 2015年 JasonAi. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    var imageName: String?
    
    @IBOutlet weak var beatyView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //old code
//        if imageName != nil{
//            beatyView.image = UIImage(named: imageName!)
//        }

        //new code
        if let name = imageName
        {
            beatyView.image = UIImage(named: imageName!)
            
            switch name
            {
            case "Avril":
                navigationItem.title = "艾薇儿"
            case "emma":
                navigationItem.title = "艾玛沃特森"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "fanbingbing":
                navigationItem.title = "范冰冰"
            case "anglebaby":
                navigationItem.title = "Anglebaby"
            case "linzhiling":
                navigationItem.title = "林志玲"
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareImage(sender: AnyObject) {
        
        //这个类型的变量在分享之前会显示在view中，包含文字之类的
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        controller.setInitialText("女神画廊App好好玩，大家快来一起玩吧！")
        controller.addImage(beatyView.image)
        
        //这个是将这个分享的viewController展示在当前界面前
        self.presentViewController(controller, animated: true, completion: nil)

        //下面这些是iOS系统级别支持的社交绑定服务，这些社交服务的账号可以绑定到iOS上，所以分享会变的更加方便
//        @availability(iOS, introduced=6.0)
//        let SLServiceTypeTwitter: String
//        @availability(iOS, introduced=6.0)
//        let SLServiceTypeFacebook: String
//        @availability(iOS, introduced=6.0)
//        let SLServiceTypeSinaWeibo: String
//        @availability(iOS, introduced=7.0)
//        let SLServiceTypeTencentWeibo: String
    }
    
}
