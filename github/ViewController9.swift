//
//  ViewController.swift
//  ios2
//
//  Created by User on 4.02.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtBoxToplam: UITextField!
    @IBOutlet weak var txtBoxSayi: UITextField!
    @IBOutlet weak var txtBoxOrtalama: UITextField!
    @IBOutlet weak var txtBoxGiris: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var Toplam = 0
    var Sayi = 0
    var Ortalama:Float = 0
    
    @IBAction func butonEkle(_ sender: Any) {
        var a = txtBoxGiris.text
        if(a==nil)
        {
            a="0"
        }
        let nots = Int(a!)!
        Toplam = Toplam + nots
        Sayi = Sayi + 1
        Ortalama = Float(Toplam) / Float(Sayi)
        txtBoxGiris.text = ""
        txtBoxSayi.text = Sayi.description
        txtBoxToplam.text = String(Toplam)
        txtBoxOrtalama.text = String(Ortalama)
    }
    
    @IBAction func butonSil(_ sender: Any) {
        Sayi = 0
        Toplam = 0
        Ortalama = 0
        txtBoxGiris.text = "0"
        txtBoxSayi.text = "0"
        txtBoxToplam.text = "0"
        txtBoxOrtalama.text = "0"
    }
}

