//
//  ViewController.swift
//  uArtBook
//
//  Created by User on 3.04.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var nameArray = [String]()
    var artistArray = [String]()
    var yearArray = [Int]()
    var imageArray = [UIImage]()
    
    
    @IBAction func BarButtonItem(_ sender: Any) {
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        getInfo()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return nameArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
    
    
    func getInfo(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                for result in results as![NSManagedObject]{
                    if let name = result.value(forKey: "name") as? String {
                    self.nameArray.append(name)
                    }
                   
                    if let artist = result.value(forKey: "artist") as? String {
                        self.artistArray.append(artist)
                    }
                    
                    if let year = result.value(forKey: "year") as? Int{
                    self.yearArray.append(year)
                    }
                    
                    if let imageData = result.value(forKey: "image") as? Data{
                    let image = UIImage(data: imageData)
                    self.imageArray.append(image!)
                }
                self.tableView.reloadData()
                } }}
                catch{
                    
                }
}
}



