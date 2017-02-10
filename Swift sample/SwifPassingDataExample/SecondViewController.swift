//
//  SecondViewController.swift
//  SwifPassingDataExample
//
//The MIT License (MIT)
//Copyright (c) 2017 Luis Medrano-Zaldivar
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
//to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,

import UIKit

protocol secondVCDelegate {
   func passingDataFromSecondViewController(str:String)
}

class SecondViewController: UIViewController {
    
    var str = String()
    var delegate :secondVCDelegate? = nil
    
    @IBOutlet weak var txtFromMainView: UILabel!
    @IBOutlet weak var txtToMainView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.str != "" {
            print(self.str)
            self.txtFromMainView.text = self.str
        }
    }

    @IBAction func goBackToMainView(_ sender: Any) {
        
        self.dismiss(animated: true) {
            let str: String = self.txtToMainView.text!
            self.delegate?.passingDataFromSecondViewController(str: str)
        }
    }
}
