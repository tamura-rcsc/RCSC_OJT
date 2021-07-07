//
//  ResultViewController.swift
//  Calc
//
//  Created by matsui on 2021/07/07.


import UIKit

class ResultViewController: UIViewController {

    var price : Int = 0
    var percent : Int = 0
    
    @IBOutlet weak var resultField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let percentValue = Float(percent)/100
        let waribikiPrice = Float(price)*percentValue
        let percentOfPrice = price - Int(waribikiPrice)
        resultField.text = "\(percentOfPrice)"
        
    }
}
