//
//  ViewController.swift
//  Day5_IOS
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 Ilyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    var countryList = ["INDIA", "CANADA", "USA", "CHINA", "RUSIA", "BRAZIL", "UNITED KINGDOM", "UAE", "DUBAI", "AUSTRALIA"]
    var cityList = ["Mumbai", "Delhi", "Hyderabad", "Ahmedabad", "Surat", "Banglore"]
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    @IBOutlet weak var lblCountryName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.pickerCountry.delegate = self
        self.pickerCountry.dataSource = self
        
    }

    @IBAction func birthDatePicker(_ sender: UIDatePicker) {
        print(sender.date)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return self.countryList.count
        }
       
            return self.cityList.count
        
      
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return "Comp: \(component) - Row: \(row)"
        if component == 0{
            return self.countryList[row]
        }
       
            return self.cityList[row]
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.lblCountryName.text = "Country: \(self.countryList[self.pickerCountry.selectedRow(inComponent: 0)]), City: \(self.cityList[self.pickerCountry.selectedRow(inComponent: 1)])"
        
        
    }
}

