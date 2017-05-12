//
//  ViewController.swift
//  ValidationSample
//
//  Created by Amit Bagada on 27/04/17.
//  Copyright © 2017 Amit Bagada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var str = String()
    var userNameArray = [1,2,3]
    var emailAddArray = [1,4]
    var PasswordArray = [1,5]
   
    @IBOutlet weak var txtvalue: UITextField!
    
    @IBOutlet weak var txtconfirmvalue: UITextField!
    /*
     string Validation that returns Bool value
     1.isempty
     2.min charcter limit
     3.max character limit
     4.isvalid email
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
        str = ""
        userNameArray = []
        emailAddArray = []
        PasswordArray = []
    }
    deinit {
        print("de init")
    }
    @IBAction func onValidationClick(_ sender: Any) {
        
        /*if validateByTextfield(txtfeild: txtvalue, array: userNameArray) == false{
            return
        }
        if validateByTextfield(txtfeild: txtvalue, array: emailAddArray) == false{
            return
        }*/
        if validateByTextfield(txtfeild: txtvalue, array: PasswordArray) == false{
            return
        }
        if validateByTextfield(txtfeild: txtconfirmvalue, array: PasswordArray) == false{
            return
        }
        if txtvalue.text != txtconfirmvalue.text{
            return
        }
        alertMsg(str: "All validation are done")
    }
    
}
extension ViewController {
    
    func validateByTextfield(txtfeild:UITextField,array:[Int])->Bool{
        if txtfeild.text == ""{
            alertMsg(str: "pls enter username")
            return false
        }
        guard let s = txtfeild.text else {
            return false
        }
        str = s
        str = str.trimmingCharacters(in: .whitespaces)
        txtfeild.text = str
        for i in array {
            let ischeck = CheckValidation(number: i,str: str)
            if ischeck==false {
                alertMsg(str: "Case \(i) is not fulfill")
                break
            }
        }
        return true
    }
    
    func CheckValidation(number:Int,str:String)->Bool {
        switch (number) {
        case 1:
            return str.isEmptyCheck(str: str)
        case 2:
            return str.isMinlimitReached(str: str)
        case 3:
            return str.isMaxlimitReached(str: str)
        case 4:
            return str.isEmail
        case 5:
            return str.isValidPassword(str)
        default:
            return false
        }
    }
    func alertMsg(str:String) {
        let alert = UIAlertController(title: "Alert", message: str, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
