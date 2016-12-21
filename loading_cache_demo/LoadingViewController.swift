//
//  LoadingViewController.swift
//  loading_cache_demo
//
//  Created by Andy Feng on 12/21/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    var coolCacheArray:[String]?
    
    @IBOutlet weak var loadingBarBGView: UIView!
    
    @IBOutlet weak var loadingBarView: UIView!
    @IBOutlet weak var loadingBarWidthConstraint: NSLayoutConstraint!
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        self.loadSomeStuff()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.loadingBarWidthConstraint.constant = 0
//        
//        self.loadSomeStuff()
        
        self.loadingBarWidthConstraint.constant = 0
        
        // Pretend I got this from CoreData
        self.coolCacheArray = ["Anderson", "Oscar", "etc"]
        
        
        
    }
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // Helper Methods
    func loadSomeStuff(){
        
        self.loadingBarWidthConstraint.constant = self.view.frame.width
        
        // Code to start animation
        self.view.setNeedsLayout()
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.7, options: [UIViewAnimationOptions.allowUserInteraction], animations: {
            self.view.layoutIfNeeded()
        }) { (finished) in
            if finished {
                // Code to execute after animation...
                
                print("finished loading..")
                
                let myData = "Hello I'm the data!"
                
                // Instantiate appDel and homeScreen constants
                let appDel = (UIApplication.shared).delegate as! AppDelegate
                appDel.myCache = self.coolCacheArray
                
                
                let mainScreen = self.storyboard?.instantiateViewController(withIdentifier: "MainVC") as! MainViewController
                
                // Setting some data
                mainScreen.myData = myData
                
                
                // Call method in AppDelegate.swift to transition to the Home View Controller
                appDel.moveToVC(mainScreen: mainScreen)
                
                
                
            }
        }
        
        
    }
    
}

