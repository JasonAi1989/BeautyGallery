//
//  ViewController.swift
//  BeautyGallery
//
//  Created by jason on 15/9/1.
//  Copyright (c) 2015年 JasonAi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["艾薇儿", "艾玛沃特森", "杨幂", "范冰冰", "Anglebaby", "林志玲"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //用于在界面间传递消息
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"
        {
            let index = beautyPicker.selectedRowInComponent(0)
            print(index)
            var imageName: String?
            switch index
            {
            case 0: imageName = "Avril"
            case 1: imageName = "emma"
            case 2: imageName = "yangmi"
            case 3: imageName = "fanbingbing"
            case 4: imageName = "anglebaby"
            case 5: imageName = "linzhiling"
            default:
                break
            }
            
            let peer = segue.destinationViewController as! GalleryViewController
            peer.imageName = imageName
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue)
    {
    
    }
}

extension ViewController: UIPickerViewDataSource{
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return beauties[row]
    }
}