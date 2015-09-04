//
//  ViewController.swift
//  NSUserDefauitsDemo
//
//  Created by Laxman on 04/09/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastField: UITextField!
    @IBOutlet var emailtextField: UITextField!
    @IBOutlet var contactNumber: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveData() {
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(self.firstName.text, forKey: "firstName")
        defaults.setObject(self.lastField.text, forKey: "lastName")
        defaults.setObject(self.emailtextField.text, forKey: "email")
        defaults.setObject(self.contactNumber.text, forKey: "phoneNumber")
        defaults.synchronize()
    }

    @IBAction func loadData() {
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        if let firstNameIsNotNill = defaults.objectForKey("firstName") as? String {
            self.firstName.text = defaults.objectForKey("firstName") as! String
        }
        if let lastNameIsNotNill = defaults.objectForKey("lastName") as? String {
            self.lastField.text = defaults.objectForKey("lastName") as! String
        }
        if let emailIsNotNill = defaults.objectForKey("email") as? String {
            self.emailtextField.text = defaults.objectForKey("email") as! String
        }
        if let phoneNumberIsNotNill = defaults.objectForKey("phoneNumber") as? String {
            self.contactNumber.text = defaults.objectForKey("phoneNumber") as! String
        }
    }
}

