//
//  Planets.swift
//  Galactic-Guidebook
//
//  Created by Crispin Corpuz on 7/1/20.
//  Copyright © 2020 Crispin Corpuz. All rights reserved.
//

import Foundation
import UIKit

var planets: [Planet] = []

class Planet
{
    var title: String?
    var textDescription: String?
    var link: String?
    var image: UIImage?
    
    init(t: String, desc: String, l: String, im: UIImage)
    {
        title = t
        textDescription = desc
        link = l
        image = im
    }
}
