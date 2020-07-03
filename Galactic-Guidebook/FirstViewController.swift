//
//  FirstViewController.swift
//  Galactic-Guidebook
//
//  Created by Crispin Corpuz on 6/29/20.
//  Copyright © 2020 Crispin Corpuz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate,
UITableViewDataSource {
    
    @IBOutlet weak var mainTableView: UITableView!
    var selectedPlanet : Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let object = Planet(t: "Earth", desc: "It's green and we live on it", l: "https://space-facts.com", im: UIImage(named: "earth")!)
        planets.append(object)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "id")
        cell?.imageView?.image = planets[indexPath.row].image!
        cell?.textLabel?.text = planets[indexPath.row].title!
        return cell!
    }
    
<<<<<<< HEAD
<<<<<<< HEAD

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
=======
=======
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        selectedPlanet = planets[indexPath.row]
        performSegue(withIdentifier: "tableToDetailSegue", sender: cell)
    }
>>>>>>> 554227906a8ad7d9ce6eb9195e4328b3c7117dc0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scrollViewController = segue.destination as! ScrollViewViewController
        scrollViewController.selectedPlanet = selectedPlanet
    }
    
>>>>>>> de994c4ad6b8b20fe9320439f66bda9fa25bace0
}
