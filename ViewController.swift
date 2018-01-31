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
    var ethereumVal:Double = 0.0
    var news1:String = ""
    var news2:String = ""

    
    //MARK: Properties
    
    @IBOutlet weak var currentValue: UILabel!
    @IBOutlet weak var currentText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialise ethereumVal with api call
            //var url:String = ""
            //ethereumVal =
        
        //Initialise news with api call
        
            //news1 = 
            //news2 =
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Actions
    
        //To EUR button
    
    @IBAction func changeToEUR(_ sender: UIButton) {
        if changedToEur == false{
            //Make ApiCall to get value from Dollar to EUR
            //Then change vals
            currentValue.text = "10990,2€"
            changedToEur = true

        }
        else{
            currentValue.text = "10990,2$"
            changedToEur = false
        }
    }
    
        //End To EUR button
    
}

