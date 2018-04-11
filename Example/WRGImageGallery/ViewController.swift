//
//  ViewController.swift
//  WRGImageGallery
//
//  Created by wrg-mujeeb on 04/06/2018.
//  Copyright (c) 2018 wrg-mujeeb. All rights reserved.
//

import UIKit
import WRGImageGallery

class ViewController: UIViewController {
    
    var imageUrl: [String] = [
        "https://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=https%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2018%2F01%2Fnexus2cee_5t-3-728x510.jpg&w=728",
        "https://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=https%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2018%2F03%2Fnexus2cee_DSC09774-728x485.jpg&w=728",
        "https://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=https%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2018%2F04%2Fnexus2cee_home-noise-728x409.png&w=728",
        "https://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=https%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2018%2F04%2Fforge228_carousel_scales1-728x364.png&w=728",
        "https://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=https%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2018%2F04%2Fhive8a4_DSC02606-2-728x485.jpg&w=728",
        "https://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=https%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2018%2F04%2Fcitadel44c_HP-Chromebook-x2_TabletMode-728x520.jpg&w=728"
        ]
    
   
    @IBAction func buttonShowGalleryDidClick(_ sender: Any) {
         WRGImageGallery().show(urls: imageUrl, viewControl: self)
    }
    
}


