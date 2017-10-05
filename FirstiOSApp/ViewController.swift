//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by 川崎 隆介 on 2015/10/13.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var userName = "";    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeName(_ sender: Any) {
        if self.userName.count > 0 {
            self.label.text = "こんにちは、" + self.userName + "さん"
        }else{
            self.label.text = "名前が入力されていません"
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.textField {
            if let text = self.textField.text {
                userName = text
            }
            textField.resignFirstResponder()
        }
        return true
    }
    
}

