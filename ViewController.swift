//
//  ViewController.swift
//  ethereum-viewer
//
//  Created by Manuel Techert on 23.01.18.
//  Copyright © 2018 Manuel Techert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var changedToEur : Bool = false

    
    //MARK: Properties
    
    @IBOutlet weak var currentValue: UILabel!
    @IBOutlet weak var currentText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Actions
    
    @IBAction func changeToEUR(_ sender: UIButton) {
        if changedToEur == false{
            currentValue.text = "some EUR"
            changedToEur = true

        }
        else{
            currentValue.text = "10990,2$"
            changedToEur = false
        }
    }
    
}

