//
//  LandmarkImagesCVCell.swift
//  MapExample8
//
//  Created by Darianne Salinas on 7/1/22.
//

import UIKit

class LandmarkImagesCVCell: UICollectionViewCell {
 
    
    
    @IBOutlet weak var historicalImage: UIImageView!
    @IBOutlet weak var historicalImageCaptionLabel: UILabel!
    
   
    
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    //landing pad
    var historicalImageCatcher: String? {
    
        didSet {
            updateViews()
        }
          }
    
    
    func updateViews () {
        
        guard let unwrappedHistoricalImage = historicalImageCatcher else { return }
        
        historicalImage.image = UIImage(named: unwrappedHistoricalImage)
//        historicalImage.contentMode = .scaleAspectFit
        //  Give your UIView a strict width and height, in order for it not to want to take up the entire width size . THat will keep it in line wi th the desing idea you want to go with
        historicalImage.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        historicalImageCaptionLabel.text = "Random Text"
        
        
//        historicalImage.layer.cornerRadius = 10
//        historicalImage.clipsToBounds = true
//          //

    }
}
/*
 1. UIKit
 2. MapKit
 3. Dynamic annotations
 4. Intigration with Apple Maps
 5. MVC
 6. Object Oriented Programming
 7. Git
 
 */
