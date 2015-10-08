//
//  ViewController.swift
//  ShoeConverter
//
//  Created by MacBook Pro on 10/3/15.
//  Copyright (c) 2015 Dirk Heite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   // this is an update
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
   
    @IBOutlet weak var womensShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        
        let sizeFromtextField = mensShoeSizeTextField.text.toInt()! // all of the above 3 lines in one. as I suspected
        
        let conversionConstant = 30 //set constant for coversion from US to European shoe size
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromtextField + conversionConstant)" + " European shoe size" //combined the below 3 lines into 1 line
          mensConvertedShoeSizeLabel.hidden = false //show result label
    }

    @IBAction func convertButtomPressedWomen(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensShoeSizeLabel.hidden = false
        womensShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) In European Shoe Size"
        
        
    }
}

