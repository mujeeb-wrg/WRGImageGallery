//
//  WRGImageCell.swift
//  WRGImageGallery_Example
//
//  Created by Mujeeb R. O on 06/04/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Kingfisher

class WRGImageCell: UICollectionViewCell {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: WRGNetworkImageView!
    
    var imageUrl:String?{
        
        didSet{
            self.activityIndicator.startAnimating()
            activityIndicator.isHidden = false
            imageView.setImage(url: imageUrl) {
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            }
        }
    }
}
