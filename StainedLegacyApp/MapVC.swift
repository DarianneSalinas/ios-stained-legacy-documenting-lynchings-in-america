//
//  ViewController.swift
//
//
//  Created by Darianne Salinas on 6/22/22.
//

import UIKit
import MapKit



class MapVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var myMapView: MKMapView!    //this is our map
    @IBOutlet weak var mapTypeButton: UIButton!
    @IBOutlet weak var userLocationButton: UIButton!
    
    //this is our supervisor of our map
    private let locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMapView.delegate = self       //works with MKMapViewDelegate
        locationManager.delegate = self
        setUpLocationManager()
        //fpc.delegate = self
        
        
    }
    @IBAction func mapTypeButtonPressed(_ sender: Any) {
        presentMapTypes()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setRegionOfMapView()
    }
    
    func setUpLocationManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    
    
    
    // MARK: Set Region of Map View
    //before adding annotations, need to set region of map view
    //region controls where center of map is and zoom level desired for map
    func setRegionOfMapView() {
        //center specifies coordinates for what we want center of map view to be - used atlanta georgia for demo purposes
        let center = CLLocationCoordinate2D(latitude: 33.7490, longitude: -84.3880)
        //span is set for map view -> it's a specification determining how much of the map to include (ex. zoom level)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 8.0)
        //next two lines use center coordinates and span to create a MKCoordinateregion object, then sets that as the region used by map view
        let region = MKCoordinateRegion(center: center, span: span)
        myMapView.setRegion(region, animated: true)
        self.placePins()
        
    }

    
    //MARK: Add Annotations to Map
    func placePins() {
        
        //coordinates for each location on the map we want
//        let coordinates = [
//        CLLocationCoordinate2D(latitude: 40.77603054023396, longitude: -111.89104334366874), //SLC - Thomas Coleman
//        CLLocationCoordinate2D(latitude: 40.76718624909351, longitude: -111.8881509428843), //SLC - William Harvey
//        CLLocationCoordinate2D(latitude: 33.857180, longitude: -83.612262), //Georgia - two couples murdered
//        CLLocationCoordinate2D(latitude: 32.7579, longitude: -84.8749), //TODO: EDIT THIS latitude and longitude Hamilton, Georgia case
//        CLLocationCoordinate2D(latitude: 33.33718890970852, longitude: -84.78168193337784), //Georgia - Sam Wilkes
//        ]
        let newCoordinates = LandmarkData.landmarksArray
        
        
        //titles for each location
       // let titles = ["Thomas Coleman Murdered", "William Harvey Murdered", "Two Black Couples Murdered", "Lynching Hamilton County Georgia", "Sam Wilkes Murdered"]

        
        for i in newCoordinates.indices {
            let annotation = MKPointAnnotation()
            annotation.coordinate = newCoordinates[i].coordinate
            annotation.title = newCoordinates[i].locationName
            myMapView.addAnnotation(annotation)
    }
  
}
    // MARK: - Customization of Annotation Color
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "MyMarker")
        annotationView.markerTintColor = UIColor.init(_colorLiteralRed: 200/255, green: 137/255, blue: 77/255, alpha: 1)
        annotationView.glyphImage = UIImage(named: "MapPin_Fist_Outline")
        return annotationView
    }
    
        
        
        
        /*
         //annotations are the pins (pins in coding world is called annotations)
         //grabbing general area of where we want to be in
         //we set our first location
        //.first will always be optional thing so use guard let
        //this goes to locationStore, in myLocations data model we grab the first
        guard let coordinate = LocationStore.myLocations.first else { return }
        let pointAnnotation = MKPointAnnotation()
        
        //TODO: - figure out how this can take in an array of coordinates
        pointAnnotation.coordinate = coordinate
        
        let viewRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: 2400, longitudinalMeters: 800)       //possible the width and height of the zoom space
        
        self.myMapView.addAnnotation(pointAnnotation)
        
        self.myMapView.setRegion(viewRegion, animated: true)        //zooms into the region when true, using false will go straight to the region
       */
   // }

    
    // MARK: View Map Options - Normal, Satellit, Hybrid
    //when user activates function it will ask user if they want map normal, satellite, hybrid
  func presentMapTypes() {
            let mapTypesAlertController = AlertController.presentActionSheetAlertControllerWith(alertTitle: nil, alertMessage: nil, dismissActionTitle: "Cancel")
            
            let normalMapSelection = UIAlertAction(title: "Normal", style: .default) { (_) in
                self.myMapView.mapType = MKMapType.standard
            }
            let satelliteMapSelection = UIAlertAction(title: "Satellite", style: .default) { (_) in
                self.myMapView.mapType = MKMapType.satellite
            }
            let hybridMapSelection = UIAlertAction(title: "Hybrid", style: .default) { (_) in
                self.myMapView.mapType = MKMapType.hybrid
            }
            
            [normalMapSelection, satelliteMapSelection, hybridMapSelection].forEach { mapTypesAlertController.addAction($0)}
            
//      normalMapSelection.contentEdgeInsets = UIEdgeInsets(
//        top: 4,
//        left: 6,
//        bottom: 4,
//        right: 6
      //)
      
      
        //think it accounts for ipad?
           DispatchQueue.main.async {
                mapTypesAlertController.popoverPresentationController?.sourceView = self.view
                mapTypesAlertController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection()
                mapTypesAlertController.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
                
                self.present(mapTypesAlertController, animated: true, completion: nil)
            }
            
    
    }
    
    /*
    func centerMapOnUserLocation() {
            guard let coordinate = locationManager.location?.coordinate else {return}

            let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: 800, longitudinalMeters: 800)

            print(coordinateRegion.center)
            print(coordinateRegion)
            myMapView.setRegion(coordinateRegion, animated: true)
        }
     */
    
    
// MARK: Tap Annotation - Pop Up
//this checks if when annotation is tapped it should trigger true
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
//        if view.annotation is MKUserLocation {
//            return
        //}
   let didTapp = view.isSelected
        //annotation is a landmark that we click
        if let annotation = view.annotation {
           print(annotation.title)
//        } else {
//            print(view.annotation?.coordinate as Any)
//        }
        
}
       //guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "fpc_content") as? ContentViewController else { return }
    
        
//figure out how to pass a landmark to the detailVC when annotation is tapped
      guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "landmarkDetailController") as? DetailsViewController else { return }
        
        //guard let detailVC: UIViewController = UIStoryboard(name: "Main", bundle:  nil).instantiateViewController(withIdentifier: "landmarkDetailController") as? DetailsViewController else { return }
        // .instantiatViewControllerWithIdentifier() returns AnyObject!
        // this must be downcast to utilize it

        //self.presentViewController(viewController, animated: false, completion: nil)
        
//don't want to hardcode it, want to do it dynamically
     // detailVC.landmark = LandmarkData.landmarks[0]
        
        for i in LandmarkData.landmarksArray.indices {
            let annotation = view.annotation
            //if title is equal to locationName then
            //with further development consider using unique identifier instead 
            if (annotation?.title == LandmarkData.landmarksArray[i].locationName) {
                detailVC.landmarkCatcher = LandmarkData.landmarksArray[i]
            }
//            annotation.coordinate = newCoordinates[i].coordinate
//            annotation.title = newCoordinates[i].locationName
//            myMapView.addAnnotation(annotation)
        }
        
        
        //detailVC.landmark = view.annotation as? Landmark
        
        //let modalVC = ModalVC.instantiateFromStoryboard(self.storyboard!)
      self.present(detailVC, animated: true, completion: nil)
        
    //put this contentVC into our floating panel controller
//    fpc.set(contentViewController: contentVC)
//    fpc.addPanel(toParent: self)
        
        
        /*
         when annotation is clicked on present the detailVC programmatically
         */
        
        /*if view.isSelected {
         present detailVc modally programmatically
         
         //it gets tapped on and modal pops up
        
         */
    }
//
//    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        let annotation = view.annotation as! Annotation
//        let event = annotation.event
//
//        if control == view.rightCalloutAccessoryView {
//            let destination = self.storyboard!.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
//        }
        

   // }
    
    
//
//    @IBAction func mapTypeButtonPressed(_ sender: Any) {
//        presentMapTypes()
//
//    }
    
  //  @IBAction func userLocationButtonTapped(_ sender: Any) {
       // centerMapOnUserLocation()
   // }
    
}


