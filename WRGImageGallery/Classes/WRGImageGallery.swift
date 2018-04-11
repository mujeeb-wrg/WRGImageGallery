//
//  WRGImageGallery.swift
//  WRGImageGallery
//
//  Created by Mujeeb R. O on 11/04/18.
//

import UIKit

open class WRGImageGallery: NSObject {
    
    open  func show(urls:[String], viewControl: UIViewController){
        let podBundle = Bundle(for: classForCoder)
        if let bundleURL = podBundle.url(forResource: "WRGImageGallery", withExtension: "bundle") {
            if let bundle = Bundle(url: bundleURL) {
                if let galleryController = UIStoryboard(name: "ImageGallery", bundle: bundle).instantiateInitialViewController() as? WRGGalleryController{
                    galleryController.imageUrl = urls
                    viewControl.present(galleryController, animated: true, completion: nil)
                }
            }else {
                assertionFailure("Could not load the bundle")
            }
        }else {
            assertionFailure("Could not create a path to the bundle")
        }
    }
    
}
