//
//  ViewController.swift
//  my-hood
//
//  Created by Nathan McGuire on 16/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        var post = Post(imagePath: "", title: "Post 1", description: "Post 1 description")
        var post2 = Post(imagePath: "", title: "Post 1", description: "Post 2 description with more text than post 1")
        
        posts.append(post)
        posts.append(post2)
        
        tableView.reloadData()
        
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
            var cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    

}

