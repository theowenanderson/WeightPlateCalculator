//
//  ViewController.swift
//  WeightPlateCalculator
//
//  Created by Owen Anderson on 2/5/20.
//  Copyright © 2020 Owen Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var fourtylbl: UILabel!
    @IBOutlet weak var twentylbl: UILabel!
    @IBOutlet weak var tenlbl: UILabel!
    @IBOutlet weak var fivelbl: UILabel!
    @IBOutlet weak var twolbl: UILabel!
    @IBOutlet weak var barswitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func change(_ sender: Any) {
        fourtylbl.text = "0"
        twentylbl.text = "0"
        tenlbl.text = "0"
        fivelbl.text = "0"
        twolbl.text = "0"
    }
    
    @IBAction func calc(_ sender: Any) {
        let inputint:Int? = Int(input.text!)
        var res = inputint
        let min = 0
        let max = 9999
        if(barswitch.isOn){
            res = res! - 45
        }
        if(res! <= min){
            res = 0
        }
        if(res! >= max){
            res = 9999
        }
        var fourtyamount = 0
        var twentyamount = 0
        var tenamount = 0
        var fiveamount = 0
        var twoamount = 0
        
        while(res! >= 90){
            res = res! - 90
            fourtyamount += 1
            fourtylbl.text = String(fourtyamount)
        }
            
        
        
        while(res! >= 50){
            res = res! - 50
            twentyamount += 1
            twentylbl.text = String(twentyamount)
        }
    
        
        while(res! >= 20){
            res = res! - 20
            tenamount += 1
            tenlbl.text = String(tenamount)
        }
        
       
        while(res! >= 10){
            res = res! - 10
            fiveamount += 1
            fivelbl.text = String(fiveamount)
        }
        
        
        while(res! >= 5){
            res = res! - 5
            twoamount += 1
            twolbl.text = String(twoamount)
        }
        
    }
}

