//
//  DetailsViewController.swift
//
//
//  Created by Darianne Salinas on 6/28/22.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITextViewDelegate {
    
  
    

    
    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var latitudeLongitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    //landing pad
    var landmarkCatcher: Landmark? {
        didSet {
            //updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoCollectionView.delegate = self
        photoCollectionView.dataSource = self
        updateViews()
        
        //textview
        self.textView.layer.cornerRadius = 25.0
        self.textView.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        textView.backgroundColor = UIColor.init(red: 242/255, green: 245/255, blue: 234/255, alpha: 1)
        self.textView.isScrollEnabled = true
        
        // Do any additional setup after loading the view.
    }
    
    func setUpPhotoCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
    }
    
    func updateViews() {
        guard let unwrappedLandmark = landmarkCatcher else { return
           
        }
        dateLabel.text = unwrappedLandmark.date
        locationNameLabel.text = unwrappedLandmark.locationName
        latitudeLongitudeLabel.text = "\(unwrappedLandmark.latitude), \(unwrappedLandmark.longitude)"
        addressLabel.text = unwrappedLandmark.address
        textView.text = unwrappedLandmark.Description
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return 0
        guard let unwrappedLandmark = landmarkCatcher else { return 0 }
        return unwrappedLandmark.imageName.count
    
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "historicalImageCell", for: indexPath) as? LandmarkImagesCVCell else { return UICollectionViewCell()
            
        }
        guard let unwrappedLandmark = landmarkCatcher else { return UICollectionViewCell() }
        let historicalLandmarkData = unwrappedLandmark.imageName[indexPath.row]
        
        cell.historicalImageCatcher = historicalLandmarkData
        return cell
        
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
//    class func openMaps {
//        with mapItems: [MKMapItem],
//        MKLaunchOptionsDirectionsModeDriving
//    }
}
