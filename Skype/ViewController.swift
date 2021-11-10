//
//  ViewController.swift
//  Skype
//
//  Created by Brijen Patel and Abhishake on 10/11/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let itemcell = "ChatTBC"
    var arrPersonName = ["brijen","abhi","bhavik","pappu","amit","nadim","maulik","nency","ronak","janu","hitubha","parth",]
    var arrpersonchat = ["helloooo","how are you?","hey handsome","miss you bro","aiebcadbciobc","cadscaefceac","baeccadcacrijen","brijascascsaccen","brijen","brijascascascen","briascascascasjecc","brijen","fsrxdfsdf"]
    var arrpersonimage = ["man","read","man","read","man","read","man","read","man","read","man","read"]
    @IBOutlet weak var tfSearch: UITextField!
    @IBOutlet weak var tfClear: UIButton!
    @IBOutlet weak var ivCall: UIImageView!
    @IBOutlet weak var ivChat: UIImageView!
    @IBOutlet weak var ivSearch: UIImageView!
    @IBOutlet weak var ivProfile: UIImageView!
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableview.delegate = self
        tableview.dataSource = self
        
        let nib = UINib(nibName: itemcell, bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: itemcell)
        
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



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPersonName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: itemcell)as! ChatTBC
        cell.lbMessage.text = arrpersonchat[indexPath.row]
        cell.lbName.text = arrPersonName[indexPath.row]
        cell.IMG.image = UIImage(named: arrpersonimage[indexPath.row])
        return cell
    }
    
    
}
