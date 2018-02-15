//
//  ViewController.swift
//  ethereum-viewer
//
//  Created by Manuel Techert on 23.01.18.
//  Copyright © 2018 Manuel Techert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: Properties

    @IBOutlet weak var current: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("loaded")
        
        
        ethereumValues.forecast() { (results: [ethereumValues]) in
            for result in results {
                print("\(result)\n\n")
            }
            
        }
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Actions
    
    
    
}

