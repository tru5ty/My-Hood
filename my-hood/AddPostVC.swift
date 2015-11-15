//
//  AddPostVC.swift
//  my-hood
//
//  Created by Nathan McGuire on 16/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descrField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width/2
        postImg.clipsToBounds = true


    }

    @IBAction func makePostBtnPressed(sender: AnyObject) {
        
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addicBtnPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
    }
    
    
}
