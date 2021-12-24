//
//  WelcomeVC.swift
//  Skype
//
//  Created by Brijen Patel on 11/11/21.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickLogin(_ sender: UIButton){
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
//    @IBAction func onClickSignup(_ sender: UIButton){
//
//        let vc = storyboard?.instantiateViewController(withIdentifier: "")as! 
//        self.navigationController?.pushViewController(vc, animated: true)
//
//    }
}
