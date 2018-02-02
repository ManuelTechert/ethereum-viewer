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
        
        
            
        //https://api.coinmarketcap.com/v1/ticker/ethereum/

        
    
        
        
        
       
     
        

        let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("cool")
                } else {
                    if let usableData = data {
                        print(usableData) //JSONSerialization
                    }
                }
            }
            task.resume()
        //Initialise news with api call
    
            //news1 = 
            //news2 =
        
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Actions
    
    
    
}

