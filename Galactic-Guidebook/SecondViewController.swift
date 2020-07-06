//
//  SecondViewController.swift
//  Galactic-Guidebook
//
//  Created by Crispin Corpuz on 6/29/20.
//  Copyright © 2020 Crispin Corpuz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var planetCollectionView: UICollectionView!
    
    var selectedPlanet : Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        planetCollectionView.delegate = self
        planetCollectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let object = Planet(t: "Earth", desc: "It's green and we live on it", l: "https://space-facts.com", im: UIImage(named: "earth")!)
        planets.append(object)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = planetCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionID", for: indexPath)
        return cell
    }
    
}

