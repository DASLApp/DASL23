//
//  GifCell.swift
//  DASL
//
//  Created by Aziz Rmadi on 9/27/22.
//

import UIKit

class GifCell: UITableViewCell {
    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setGif(gif : Gif) {
        
        gifImageView.loadGif(name: gif.title)
        titleLabel.text = gif.title
    }
}
