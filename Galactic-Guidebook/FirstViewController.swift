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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "id")
        cell?.textLabel?.text = "Test"
        return cell!
    }
    
<<<<<<< HEAD

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
=======
    
    
>>>>>>> de994c4ad6b8b20fe9320439f66bda9fa25bace0
}
