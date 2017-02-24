//
//  ViewController.swift
//  ParseChat
//
//  Created by  Alex Sumak on 2/23/17.
//  Copyright © 2017  Alex Sumak. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let user: PFUser = PFUser()
        user.email = "someusername@gmail.com"
        user.password = "password"
        user.username = user.email
        
        user.signUpInBackground { (success: Bool, error: Error?) in
            //
            if (success) {
                print("Dummy user has signed up!")
            } else {
                print("Error!")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

