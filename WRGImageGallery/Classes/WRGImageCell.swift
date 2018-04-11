//
//  WRGImageCell.swift
//  WRGImageGallery_Example
//
//  Created by Mujeeb R. O on 06/04/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Kingfisher

class WRGImageCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: WRGNetworkImageView!
    
    var imageUrl:String?{
        didSet{
            guard let imageView = imageView else { return  }
//            let podBundle = Bundle(for: classForCoder)
//            if let bundleURL = podBundle.url(forResource: "WRGImageGallery", withExtension: "bundle") {
//                if let bundle = Bundle(url: bundleURL) {
//                    if let image = UIImage(named: "ic_close", in: bundle, compatibleWith: nil){
//                        imageView.display(image: image)
//                    }
//                }
//            }
            
            imageView.setImage(url: imageUrl)
        }
    }
 
}
