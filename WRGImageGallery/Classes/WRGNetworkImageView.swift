//
//  WRGNetworkImageView.swift
//
//  Created by Mujeeb R. O on 10/04/18.
//

import Kingfisher


open class WRGNetworkImageView: WRGZoomableImageView {
    
    open func setImage(url:String?, completion: (() -> Void)? = nil)  {
        guard let url = url else { return  }
        guard let imageUrl = URL(string: url) else { return  }
        setImage(url: imageUrl, completion: completion)
    }
    
    open func setImage(url:URL?, completion: (() -> Void)? = nil)  {
        guard let url = url else { return  }
        self.display(image: nil)
//        KingfisherManager.shared.cache.clearDiskCache()
//        KingfisherManager.shared.cache.clearMemoryCache()
        KingfisherManager.shared.retrieveImage(with: url, options: nil, progressBlock: nil) { (image, error, cache, imageURL) in
            guard let image = image, let imageUrl = imageURL, imageUrl.absoluteString == url.absoluteString else{
                return
            }
            
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false, block: { (timer) in
                if let completion = completion{
                    completion()
                }
                self.display(image: image)
            })
        }
    }
    
}
