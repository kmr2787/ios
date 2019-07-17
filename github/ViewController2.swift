//
//  ViewController.swift
//  h3_NotOrt
//
//  Created by User on 12.02.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtBox_Toplam: UITextField!
    
    @IBOutlet weak var txtBox_Sayi: UITextField!
    
    @IBOutlet weak var txtBox_Ortalama: UITextField!
    
    @IBOutlet weak var txtBox_Giris: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var Toplam = 0, Sayi = 0, Ortalama:Float = 0
    
    @IBAction func buton_Ekle(_ sender: Any) {
        // girişi oku
        //let not1:Int = Int(txtBox_Giris.text!)!

        let not1 = Int(txtBox_Giris.text!)
        if (not1 != nil)
        {
            // hesaplamaları yap
            Toplam += not1!
            Sayi += 1
            Ortalama = Float(Toplam) / Float(Sayi)
            // sonuçları ekrana yaz
            txtBox_Toplam.text = String(Toplam)
            txtBox_Sayi.text = String(Sayi)
            txtBox_Ortalama.text = Ortalama.description
        }
        // girişi temizle
        txtBox_Giris.text = ""
    }
    @IBAction func buton_Sil(_ sender: Any) {
    
    Toplam = 0
    Sayi = 0
    Ortalama = 0
    // sonuçları ekrana yaz
    txtBox_Toplam.text = String(Toplam)
    txtBox_Sayi.text = String(Sayi)
    txtBox_Ortalama.text = Ortalama.description
    // girişi temizle
    txtBox_Giris.text = ""

    }
    
}

