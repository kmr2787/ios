//
//  ViewController.swift
//  h8_2Sayfa
//
//  Created by User on 19.03.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var Sayi = 0
    @IBOutlet weak var SayiGosterici: UILabel!
    
    @IBAction func Saydirma(_ sender: Any) {
        Sayi += 1
        SayiGosterici.text = "Sayaç: \(Sayi)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "YeniSayfayaGec"
        {
            if let YeniSayfaTemsili = segue.destination as? ViewController2
            {
                YeniSayfaTemsili.YeniSayi = Sayi
            }
        }
        // Pass the selected object to the new view controller.
    }
}

