//
//  WRGGalleryController.swift
//  Kingfisher
//
//  Created by Mujeeb R. O on 10/04/18.
//


import UIKit

open class WRGGalleryController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var labelPosition: UILabel!
    
    open var imageUrl = [String]()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        labelPosition.text = "\(1)/\(imageUrl.count)"
    }
    
    @IBAction func buttonCloseDidClick(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

extension WRGGalleryController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageUrl.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! WRGImageCell
        cell.imageUrl = imageUrl[indexPath.row]
        return cell
    }
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let x = collectionView.contentOffset.x
        let w = collectionView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        labelPosition.text = "\(currentPage + 1)/\(imageUrl.count)"
    }
    
}


