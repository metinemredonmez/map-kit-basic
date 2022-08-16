//
//  ViewController.swift
//  MapKitApp
//
//  Created by Metin Donmez on 16.08.2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // map kit üzeirdne br yer gosterelim
        //40.92724353755218, 29.120072968357544
        
        // konumu verdik cclocationcoordinate 2d !!
        let konum =  CLLocationCoordinate2D(latitude: 40.92724353755218, longitude: 29.120072968357544)
        
        // zoom degerı yanı span
        let span =  MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        
        // bolgeyı oluştur REGİON
        let bolge =  MKCoordinateRegion(center: konum, span: span)
        // bunu bızım mapview e ekleyelim
        mapView.setRegion(bolge, animated: true)
        
        //şimdide pin oluşturalım
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "istanbul"
        pin.subtitle = "maltepe"
        
        // map view e ekle
        mapView.addAnnotation(pin)
        
        
        
        
        
    }


}

