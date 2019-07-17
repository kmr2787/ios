//
//  ViewController.swift
//  h5_kolleksiyon
//
//  Created by User on 24.02.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Etiket1: UILabel!
    @IBOutlet weak var Etiket2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        SliderCubukKonumu.maximumValue = 10
        SliderCubukKonumu.value = 0
    }

    @IBOutlet weak var SliderCubukKonumu: UISlider!
    @IBAction func SliderCubuk(_ sender: Any) {
        Etiket1.text = String(SliderCubukKonumu.value)
    }
    var someInts1 = [Int]()
    var someInts2 = Array<Int>()
    let strings : [String?] = Array(repeating:nil, count:100)

    @IBAction func ButonRastgele(_ sender: Any) {
        
        someInts1.removeAll()
        someInts2 = []
        
        for _ in 1...10
        {
            let a = Int.random(in: 0..<10)

            someInts1.append(a)
            someInts2.append(a)
        }
        
        Etiket2.text = "Uzunluk= \(someInts2.count)"
        SliderCubukKonumu.value = Ortalama(dizi: someInts1)
    }

    func Ortalama(dizi: [Int])->(Float)
    {
        var Toplam = 0
        var Sonuc:Float = 0.0
        for a in dizi {
            Toplam = Topla(ilkSayi: a, ikinciSayi: Toplam)
        }
        
        Sonuc = Float(Toplam / dizi.count)
        return Sonuc
    }

    func Topla(ilkSayi:Int, ikinciSayi:Int) -> (Int)
    {
        return (ilkSayi + ikinciSayi)
    }

}

