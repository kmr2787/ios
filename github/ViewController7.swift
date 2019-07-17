//
//  ViewController.swift
//  h13_Tablo
//
//  Created by User on 30.04.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ad = UITableViewCell()
        ad.textLabel?.text = aData[indexPath.item]
        return ad
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    var aData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]

    @IBOutlet weak var aTablo: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.aTablo.delegate = self
        self.aTablo.dataSource = self
    }


}

