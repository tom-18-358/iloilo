//
//  ViewController.swift
//  iloilo
//
//  Created by Tomooki on 2018/03/17.
//  Copyright © 2018年 tom-18-358. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var formTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTouchUpConfirmButton(_ sender: UIButton) {
        resultLabel.text = formTextField.text
    }

}

