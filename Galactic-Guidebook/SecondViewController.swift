//
//  SecondViewController.swift
//  Galactic-Guidebook
//
//  Created by Crispin Corpuz on 6/29/20.
//  Copyright © 2020 Crispin Corpuz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let images = [#imageLiteral(resourceName: "earth")]
    
    var selectedPlanet : Planet?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = self.images[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        collectionView.deselectItem(at: indexPath, animated: true)
        selectedPlanet = planets[indexPath.item]
        performSegue(withIdentifier: "collectionToDetailSegue", sender: cell)

        
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let scrollViewController = segue.destination as! ScrollViewViewController
    scrollViewController.selectedPlanet = selectedPlanet


       
        
    }
}



