//
//  PicCell.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/14/22.
//

import UIKit

class PicCell: UITableViewCell {

    @IBOutlet weak var picImageView: UIImageView!
    
    @IBOutlet weak var picTitleLabel: UILabel!
    
    func setPic(pic : Pic) {
        
        picImageView.image = pic.image
        picTitleLabel.text = pic.title
    }
    
}
