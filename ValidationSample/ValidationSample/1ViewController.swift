//
//  1ViewController.swift
//  ValidationSample
//
//  Created by Amit Bagada on 10/05/17.
//  Copyright © 2017 Amit Bagada. All rights reserved.
//

import UIKit

class _ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vs  = self.storyboard?.instantiateViewController(withIdentifier: "123") as! ViewController
        // Do any additional setup after loading the view.
        print(vs.PasswordArray.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}