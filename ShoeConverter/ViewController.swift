//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Willie Strickland on 4/2/15.
//  Copyright (c) 2015 Willie Strickland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPresed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!

        // above three lines of code can be simplified to one line
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        mensShoeSizeTextField.text = mensShoeSizeTextField.text + " US size"
        
//        let conversionConstant = 30
//        integerFromTextField += conversionConstant
//        
//        mensConvertedShoeSizeLabel.hidden = false
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        
        // simplified
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }

}

