//
//  ViewController.swift
//  Skype
//
//  Created by Brijen Patel and Abhishake on 10/11/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var tfSearch: UITextField!
    @IBOutlet weak var tfClear: UIButton!
    @IBOutlet weak var ivCall: UIImageView!
    @IBOutlet weak var ivChat: UIImageView!
    @IBOutlet weak var ivSearch: UIImageView!
    @IBOutlet weak var ivProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfSearch.addTarget(self, action: #selector(searchChanged(_:)), for: .editingChanged)
        
        if tfSearch.text == "" {
            tfClear.isHidden = true
        }
           

    }
   
    @objc func searchChanged(_ sender : UITextField) {
        
        if tfSearch.text == "" {
            tfClear.isHidden = true
            
        }else
        {
            tfClear.isHidden = false
        }
    }
    @IBAction func onClickCall(_ sender: UIButton) {
        ivCall.image = UIImage(named: "call")
        ivChat.image = UIImage(named: "chat_unselected")
        ivSearch.image = UIImage(named: "search_unselected")
        ivProfile.image = UIImage(named: "profile_unselected")
    }
    
    @IBAction func onClickChat(_ sender: UIButton) {
        ivCall.image = UIImage(named: "call_unselected")
        ivChat.image = UIImage(named: "chat")
        ivSearch.image = UIImage(named: "search_unselected")
        ivProfile.image = UIImage(named: "profile_unselected")
    }
    
    @IBAction func onClickSearch(_ sender: UIButton){
        ivCall.image = UIImage(named: "call_unselected")
        ivChat.image = UIImage(named: "chat_unselected")
        ivSearch.image = UIImage(named: "search")
        ivProfile.image = UIImage(named: "profile_unselected")
    }
    
    @IBAction func onClickProfile(_ sender: UIButton) {
        ivCall.image = UIImage(named: "call_unselected")
        ivChat.image = UIImage(named: "chat_unselected")
        ivSearch.image = UIImage(named: "search_unselected")
        ivProfile.image = UIImage(named: "profile")
    }
    
    @IBAction func onClickFilter(_ sender: UIButton) {
    }
    
    @IBAction func onClickVediocall(_ sender: UIButton) {
    }
    
    @IBAction func onClickClear(_ sender: UIButton) {
       
            tfSearch.text = ""
            view.endEditing(true)
            tfClear.isHidden = true
        
    }
}



