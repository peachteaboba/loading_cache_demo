//
//  ViewController.swift
//  loading_cache_demo
//
//  Created by Andy Feng on 12/21/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    var myData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.mainLabel.text = self.myData!
        
        // Instantiate appDel and homeScreen constants
        let appDel = (UIApplication.shared).delegate as! AppDelegate
        
        print(appDel.myCache?[0])
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // hi

}

