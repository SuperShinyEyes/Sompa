//
//  ViewController.swift
//  Sompa
//
//  Created by Park Seyoung on 28/10/16.
//  Copyright © 2016 Park Seyoung. All rights reserved.
//

import UIKit
import Mapbox

class MapViewController: UIViewController, MGLMapViewDelegate {
    
    var mapView: MGLMapView!
    var poolAnnotations: [MGLPointAnnotation]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadMapView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        mapView.showsUserLocation = true
        initDefaultLocation()
        loadData()
    }

}

/**
 MGLMapView UI
 */
extension MapViewController {
     func loadMapView(){
        let frame = getViewFrame(.fullScreen)
        mapView = MGLMapView(frame: frame, styleURL: MapVCConstants.pokemonStyle)
        
        
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.delegate = self
        view.addSubview(mapView)
    }
    
    fileprivate func getViewFrame(_ frameSize: ViewFrameSize) -> CGRect {
        let bounds = UIScreen.main.bounds
        switch frameSize {
        case .fiveOverSix: return CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: bounds.width, height: bounds.height/6*5))
        case .fullScreen: return CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: bounds.width, height: bounds.height))
        case .halfUp: return CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: bounds.width, height: bounds.height/2))
        case .halfDown: return CGRect(origin: CGPoint(x: 0, y: bounds.height/2), size: CGSize(width: bounds.width, height: bounds.height/2))
        }
    }
    
    fileprivate func zoomIn(_ coord: CLLocationCoordinate2D, zoomLevel: Double = ZoomLevelConstants.zoomLevelForFloorPlanView) {
        mapView.setCenter(coord, zoomLevel: zoomLevel, animated: true)
    }
    
    fileprivate func initDefaultLocation() {
        let coords: CLLocationCoordinate2D
//        if let location = mapView.userLocation {
//            coords = location.coordinate
//            print("Show gps location")
//        } else {
            coords = MapVCConstants.defaultCenterCoordinate
//        }
        mapView.setCenter(coords, zoomLevel: ZoomLevelConstants.zoomLevelForMapView, animated: false)
    }
}



/**
 Pool Data
 */
extension MapViewController {
    fileprivate func loadData() {
        poolAnnotations = PoolData.getPoolAnnotations()
        mapView.addAnnotations(poolAnnotations!)
    }
}


extension MapViewController {
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
}
