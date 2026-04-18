//
//  ViewController.swift
//  Swift-RestAPIs
//
//  Created by Jaimin Raval on 18/04/26.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        // Don't forget to call api func() as you guys do always :)
        APIManager.shared.callAPI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

