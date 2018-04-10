//
//  WRGImageCell.swift
//  WRGImageGallery_Example
//
//  Created by Mujeeb R. O on 06/04/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Kingfisher

class WRGImageCell: UICollectionViewCell {
    
    @IBOutlet weak var scrollImageView: WRGZoomableImageView!
    
    var imageUrl:String?{
        didSet{
            let url = URL(string:imageUrl!)
            let resource =  ImageResource(downloadURL:url!)
            KingfisherManager.shared.retrieveImage(with: resource, options: nil, progressBlock: nil) { (image, error, cache, nil) in
                self.scrollImageView.display(image: image!)
            }
        }
    }
    
}
