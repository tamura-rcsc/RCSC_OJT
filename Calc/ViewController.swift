//
//  ViewController.swift
//  Calc
//
//  Created by matsui on 2021/07/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tap1Button(_ sender: Any) {
        let value = priceField.text! + "1"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        let value = priceField.text! + "2"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        let value = priceField.text! + "3"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        let value = priceField.text! + "4"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        let value = priceField.text! + "5"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    

    
    @IBAction func tap6Button(_ sender: Any) {
        let value = priceField.text! + "6"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        let value = priceField.text! + "7"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        let value = priceField.text! + "8"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        let value = priceField.text! + "9"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        let value = priceField.text! + "0"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        let value = priceField.text! + "00"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tapcButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    @IBAction func restart(_segue: UIStoryboardSegue){
        priceField.text="0"
    }
    
    
    @IBAction func tapToPercent(_ sender: Any) {
        let priceFieldInt = Int(priceField.text!)
        if priceFieldInt==0{
            //self.dismiss(animated: true, completion: nil)
            displayAlert()
        }else{
            performSegue(withIdentifier: "toPercent", sender: nil)
        }
        
    }
    
    func displayAlert() {
            let title = "0は割れません"
            let message = "数値を記入してください"
            let okText = "ok"

        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okayButton = UIAlertAction(title: okText, style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okayButton)

            present(alert, animated: true, completion: nil)
        }
    
    
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        let viewController = segue.destination as! PercentViewController
        
        if let price = Int(priceField.text!){
            viewController.price = price
        }
        
    }
    
    
}

