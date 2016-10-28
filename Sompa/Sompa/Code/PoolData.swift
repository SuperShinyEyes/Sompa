//
//  PoolData.swift
//  Sompa
//
//  Created by Park Seyoung on 28/10/16.
//  Copyright © 2016 Park Seyoung. All rights reserved.
//

import Foundation
import Mapbox

struct Pool {
    let name: String
    let address: String
    let latitude: Double
    let longitude: Double
    let spaceType: PoolType
    
    enum PoolType {
        case Indoor
        case Outdoor
        case InAndOut
    }
}

struct PoolData {
//    let d = ["name": "Tapiolan uimahalli"]
    private static let poolDataRaw: [[String:Any]] = [["name": "Tapiolan uimahalli", "address": "Kirkkopolku 3, 02100 Espoo, Finland", "latitude":60.178327, "longitude":24.807795],
                                ["name": "Espoonlahden uimahalli", "address": "Espoonlahdenkuja 4, 02320 Espoo, Finland", "latitude":60.1463985, "longitude":24.6592212],
                                ["name": "Keski-Espoon uimahalli", "address": "Kaivomestarinniitty 2, 02770 Espoo, Finland", "latitude":60.2098976, "longitude":24.6598829],
                                ["name": "Leppävaaran uimahalli", "address": "ja maauimala Veräjäpellonkatu 15, 02650 Espoo, Finland", "latitude":60.2256264, "longitude":24.8042497],
                                ["name": "Olarin Uimahalli", "address": "Yläportti 4, 02210 Espoo, Finland", "latitude":60.1751355, "longitude":24.734668],
                                
                                ["name": "Myyrmäen uimahalli", "address": "Myyrmäenraitti 4, 01600 Vantaa, Finland", "latitude":60.265322, "longitude":24.8514035],
                                ["name": "Tikkurilan uimahalli", "address": "Läntinen Valkoisenlähteentie 50, 01300 Vantaa, Finland", "latitude":60.2986315, "longitude":25.0310558],
                                ["name": "Hakunilan uimahalli", "address": "Sotungintie 17, 01200 Vantaa, Finland", "latitude":60.2800578, "longitude":25.119896],
                                ["name": "Korson uimahalli", "address": "Kisatie 29, 01450 Vantaa, Finland", "latitude":60.3578379, "longitude":25.0700016],
                                ["name": "Martinlaakson uimahalli", "address": "Martinlaaksonkuja 2, 01620 Vantaa, Finland", "latitude":60.2760533, "longitude":24.8454307],
                                ["name": "Itäkeskuksen uimahalli", "address": "Olavinlinnantie 6, 00900 Helsinki, Finland", "latitude":60.2130245, "longitude":25.0763363],
                                ["name": "Jakomäen uimahalli", "address": "Somerikkopolku 6, 00770 Helsinki, 00770 Helsinki, Finland", "latitude":60.259789, "longitude":25.080033],
                                ["name": "Pirkkolan liikuntapuiston uimahalli", "address": "Pirkkolan Metsätie 6, 00630 Helsinki, Finland", "latitude":60.2341321, "longitude":24.9096161],
                                ["name": "Yrjönkadun uimahalli", "address": "Yrjönkatu 21b, 00120 Helsinki, Finland", "latitude":60.1682706, "longitude":24.9390414],
                                ["name": "Haagan uimahalli", "address": "Isonnevantie 8, 00320 Helsinki, Finland", "latitude":60.2113067, "longitude":24.8902483],
                                ["name": "Kallion uimahalli", "address": "Helsinginkatu 25, 00101 Helsinki, Finland", "latitude":60.1865866, "longitude":24.9475381],
                                ["name": "Kontulan uimahalli", "address": "Ostostie 4, 00940 Helsinki, Finland", "latitude":60.2373215, "longitude":25.0849951],
                                ["name": "Lauttasaaren uimahalli", "address": "Isokaari 19, 00200 Helsinki, Finland", "latitude":60.1581339, "longitude":24.8621877],
                                ["name": "Malmin uimahalli", "address": "Pekanraitti 14, 00700 Helsinki, Finland", "latitude":60.2510937, "longitude":25.0164217],
                                ["name": "Mäkelänrinteen uintikeskus", "address": "Mäkelänkatu 49, 00550 Helsinki, Finland", "latitude":60.1997653, "longitude":24.9479906],
                                ["name": "Siltamäen uimahalli", "address": "Jousimiehentie 3, 00740 Helsinki, Finland", "latitude":60.2749083, "longitude":24.9893618],
                                ["name": "Töölön uimahalli", "address": "Topeliuksenkatu 41, 00290 Helsinki, Finland", "latitude":60.1895723, "longitude":24.9118507],
                                ["name": "Vuosaaren uimahalli", "address": "Vuosaarentie 5, 00980 Helsinki, Finland", "latitude":60.2095184, "longitude":25.1415254], 
                                ["name": "Leppävaaran uimahalli ja maauimala", "address":"Veräjäpellonkatu 15, 02650 Espoo, Finland", "latitude":60.2256264, "longitude":24.8042497],
                                ["name":"Kumpulan maauimala", "address": "Allastie 1, 00560 Helsinki, Finland", "latitude":60.20859, "longitude": 24.958116],
                                ["name":"Uimastadionin maauimala", "address": "Hammarskjöldintie 5, 00250 Helsinki, Finland", "latitude":60.1886441, "longitude": 24.9291119]]

    static func getPoolAnnotations() -> [MGLPointAnnotation] {
        return poolDataRaw.map { pool in
            let annotation = MGLPointAnnotation()
            
            if let name = pool["name"] as? String {
                annotation.title = name
            }
            if let address = pool["address"] as? String {
                annotation.subtitle = address
            }
            if let latitude = pool["latitude"] as? Double,
                let longitude = pool["longitude"] as? Double {
                annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            }
            
            return annotation
        }
    }
}
