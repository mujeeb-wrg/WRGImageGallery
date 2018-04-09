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
    
    @IBOutlet weak var scrollImageView: WRGImageScrollView!
    
    var imageUrl:String?{
        didSet{
            
        }
    }
    
}
