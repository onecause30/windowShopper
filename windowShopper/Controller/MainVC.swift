//
//  ViewController.swift
//  windowShopper
//
//  Created by Anthony Hall on 8/21/18.
//  Copyright © 2018 Anthony Hall. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    @IBOutlet weak var resultLbl: UILabel!
    
    
    
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9996730685, green: 0.5794657469, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func calculate() {
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func ClearCalcBtnPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
        
        
    }
}

