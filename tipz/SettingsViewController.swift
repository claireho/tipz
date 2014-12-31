//
//  SettingsViewController.swift
//  tipz
//
//  Created by Macintosh on 12/26/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var defaults = NSUserDefaults.standardUserDefaults()
    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultTip.selectedSegmentIndex = defaults.integerForKey("defaultTipIndex")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipChanged(sender: AnyObject) {
        defaults.setInteger(defaultTip.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
