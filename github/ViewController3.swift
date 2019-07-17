//
//  ViewController.swift
//  h4_Diziler
//
//  Created by User on 19.02.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtToplam: UITextField!
    @IBOutlet weak var txtSayi: UITextField!
    @IBOutlet weak var txtOrtalama: UITextField!
    @IBOutlet weak var txtYeni: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var dizi: [Int] = []
    var Toplam = 0
    var Sayi = 0
    var Ort:Float = 0.0
    
    @IBAction func btnOrtHesapla(_ sender: Any) {
        Toplam = 0
        Ort = 0.0
        Sayi = dizi.count
        
        for sayi in dizi
        {
            Toplam += sayi
        }

        if (Sayi>0) {
            Ort = Float(Toplam) / Float(Sayi)
        }
        
        // yerine yaz
        txtToplam.text = String(Toplam)
        txtSayi.text = String(Sayi)
        txtOrtalama.text = String(Ort)
    }
    
    @IBAction func btnEkle(_ sender: Any) {
        // hatasız giriş okuma
        var giris:String?
        giris = txtYeni.text
        if let not = Int(giris!)
        {
            dizi.append(not)
        }
        txtYeni.text = ""
    }
}

