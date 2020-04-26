//
//  LoginVC.swift
//  Smart Bariatrics
//
//  Created by Captain on 25/04/20.
//  Copyright © 2020 Jay Shenmare. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    //Mark:- IBOutlet
    @IBOutlet weak var img_background: UIImageView!
    @IBOutlet weak var txt_Username: UITextField!
    @IBOutlet weak var txt_Password: UITextField!
    @IBOutlet weak var btn_Doctor: UIButton!
    @IBOutlet weak var btn_Patient: UIButton!
    @IBOutlet weak var img_Select_Doctor: UIImageView!
    @IBOutlet weak var img_Select_Patient: UIImageView!
    @IBOutlet weak var btn_Login: UIButton!
    //Mark:- Variable
    var Is_User_Doctor : Bool = false
    var Is_User_Patient : Bool = false
    //Mark:- Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.Initilization()
    }
    func Initilization() {
        Utils.set_Image_on_LeftView_of_Textfield(textfield: self.txt_Username, imagename: "ic_User", width: 20, height: 20)
        Utils.set_Image_on_LeftView_of_Textfield(textfield: self.txt_Password, imagename: "ic_Password", width: 20, height: 20)
    }
    @IBAction func btn_UserType(_ sender: UIButton) {
        self.view.endEditing(true)
        self.Is_User_Doctor = !self.Is_User_Doctor
       self.img_Select_Doctor.image = UIImage(named: Is_User_Doctor ? "ic_Radio_Selected" : "ic_Radio_Unselected")
       self.img_Select_Patient.image = UIImage(named: Is_User_Doctor ? "ic_Radio_Unselected" : "ic_Radio_Selected")
    }
    //MARK:- Login Button Click
    @IBAction func btn_login(_ sender: UIButton) {
    }
    
}
