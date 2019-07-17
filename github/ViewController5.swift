//
//  ViewController.swift
//  h10_Saklama
//
//  Created by User on 2.04.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Sehir: UITextField!
    @IBOutlet weak var Plaka: UITextField!
    @IBOutlet weak var Ariza: UILabel!

    var Sehirler = [String: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       Sehir.text =  UserDefaults.standard.string(forKey: "Sehir")
        Plaka.text = UserDefaults.standard.string(forKey: "Plaka")
    }

    @IBAction func Sakla(_ sender: Any) {
        
        let sad = Sehir.text
        let spa = Plaka.text
        if sad != nil, spa != nil
        {
            if sad!.count > 0, spa!.count > 0
            {
                Sehirler[Sehir.text!] = Int(Plaka.text!)
                
                Ariza.text = "Sözlüge eklendi."
            }
            else
            {
                Ariza.text = "Girişte boş alan var."
            }
        }
        else
        {
            Ariza.text = "giriş uzunluğu bulunamadı"
        }
        
        UserDefaults.standard.set(Sehir.text, forKey: "Sehir")
        UserDefaults.standard.set(Plaka.text, forKey: "Plaka")
        UserDefaults.standard.synchronize()
    }
    
}

