//
//  AddPostsVC.swift
//  my-hood
//
//  Created by Carl Henningsson on 1/7/16.
//  Copyright © 2016 Carl Henningsson. All rights reserved.
//

import UIKit

class AddPostsVC: UIViewController {

    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    
    @IBAction func addPicBtnPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func makePostBtnPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
