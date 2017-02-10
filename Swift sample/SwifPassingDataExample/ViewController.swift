//
//  ViewController.swift
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

class ViewController: UIViewController,secondVCDelegate {
    
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var txtFromSecondView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func passDataToSecondView(_ sender: Any) {
        
        self.performSegue(withIdentifier: "second", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            if let destination = segue.destination as? SecondViewController{
                destination.str = txtInput.text!
                destination.delegate = self
            }
        }
    }
    
    func passingDataFromSecondViewController(str: String) {
        
        if str != "" {
            self.txtFromSecondView.text = str
        }
    }
}

