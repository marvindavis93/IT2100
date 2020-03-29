//
//  ViewController.swift
//  Bullseye3.0
//
//  Created by Marv Davis on 3/28/20.
//  Copyright © 2020 Marv Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showAlert (){
        
        let alert = UIAlertController (title: "Hello World!", message: "This my first app!", preferredStyle: .alert)

        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction (action)
        
        present (alert, animated: true, completion: nil)
}
    
    
    
}

