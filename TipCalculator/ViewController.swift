//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vladimir Saprykin on 17.06.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSumLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalSumLabel: UILabel!
    
    var data = Data()
    

    
    lazy var accessoryToolbar: UIToolbar = {
        let toolbar = UIToolbar(frame: CGRectMake(0, 0, self.view.frame.size.width, 50))
        toolbar.barStyle = UIBarStyle.Default
        toolbar.items = [
           UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: #selector(ViewController.cancelDidPressed)),
           UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        ]
        toolbar.sizeToFit()
        return toolbar
    }()
    
    func cancelDidPressed() {
        view.endEditing(true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Tip Calculator"
        textField.inputAccessoryView = accessoryToolbar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func userInput(sender: UITextField) {
        print("This is working")
        tipLabel.text = String("Tip (\(sender.text!)%)")
    }
    
    
    

}

