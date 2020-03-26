//
//  ImageCell.swift
//  UIImageAndButton
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Field Employee. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
