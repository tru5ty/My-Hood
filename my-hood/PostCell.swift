//
//  PostCell.swift
//  my-hood
//
//  Created by Nathan McGuire on 16/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descrLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func configureCell(post: Post) {
        titleLbl.text = post.title
        descrLbl.text = post.postDescr
        
    }

}
