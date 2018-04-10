//
//  WRGNetworkImageView.swift
//  Kingfisher
//
//  Created by Mujeeb R. O on 10/04/18.
//

import Kingfisher


class WRGNetworkImageView: WRGZoomableImageView {

    let progressIndicator = UIProgressView()
    
    override func initView() {
        super.initView()
        addSubview(progressIndicator)
    }
    
    func setImage(url:String)  {
        guard let url = URL(string: url) else { return  }
        setImage(url: url)
    }
    
    func setImage(url:URL)  {
        progressIndicator.isHidden = false
        KingfisherManager.shared.retrieveImage(with: url, options: nil, progressBlock: nil) { (image, error, cache, nil) in
            self.progressIndicator.isHidden = true
            guard let image = image else{
                 return
            }
            self.display(image: image)
        }
    }
    
}
