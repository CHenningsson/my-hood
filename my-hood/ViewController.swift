//
//  ViewController.swift
//  my-hood
//
//  Created by Carl Henningsson on 1/7/16.
//  Copyright © 2016 Carl Henningsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
//        var post = Post(imagePath: "", title: "post 1", description: "fmaksngjsngks")
//        var post2 = Post(imagePath: "", title: "post 2", description: "fkalmfgfklamg.sa")
//        var post3 = Post(imagePath: "", title: "wg,sdl", description: "mgkdmsk")
//        
//        posts.append(post)
//        posts.append(post2)
//        posts.append(post3)
//        
//        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 91.0
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    
    
    
    
    
}

