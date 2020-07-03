//
//  ScrollViewController.swift
//  Galactic-Guidebook
//
//  Created by Crispin Corpuz on 7/1/20.
//  Copyright © 2020 Crispin Corpuz. All rights reserved.
//

import UIKit
import SafariServices

class ScrollViewViewController: UIViewController, UIScrollViewDelegate, SFSafariViewControllerDelegate {

    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetDescriptionLabel: UILabel!
    @IBAction func onLinkButtonPressed(_ sender: Any) {
        let safariViewController = SFSafariViewController(url: URL(string: (selectedPlanet?.link)!)!)
        safariViewController.delegate = self as! SFSafariViewControllerDelegate
        present(safariViewController, animated: true, completion: nil)
    }
    
    var selectedPlanet : Planet?

    override func viewDidLoad() {
        super.viewDidLoad()

        planetImage.image = selectedPlanet?.image!
        planetNameLabel.text = selectedPlanet?.title!
        planetDescriptionLabel.text = selectedPlanet?.textDescription!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
