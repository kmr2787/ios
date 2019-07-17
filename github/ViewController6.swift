//
//  ViewController.swift
//  h11_VeriSec
//
//  Created by User on 15.04.2019.
//  Copyright © 2019 Kamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var Etiket: UILabel!
    @IBOutlet weak var Secici: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.Secici.delegate = self
        self.Secici.dataSource = self
        
        aData  = [["Ömer", "Fatih", "Anıl", "Halil", "Ahmet", "Yusuf"],
        [ "CS", "EE", "CM", "IT"]]
    }
    
    var aData :[[String]] = [[String]]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return aData[component][row]
    }
    
    /*
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Etiket.text = aData[row]
    }    */
    
    @IBAction func ButonOku(_ sender: Any) {
        let a0 = Secici.selectedRow(inComponent: 0)
        let a1 = Secici.selectedRow(inComponent: 1)
        
        
        Etiket.text = "\( aData[0][a0])  \( aData[1][a1])"
    }
}

