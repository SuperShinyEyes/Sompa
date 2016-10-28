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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/**
 MGLMapView UI
 */
extension MapViewController {
    fileprivate func loadMapView(){
        let mapViewFrame = getViewFrame(MapVCConstants.mapViewFrameSize)
        mapView = MGLMapView(frame: mapViewFrame)
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
}
