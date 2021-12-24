//
//  Chat_Board.swift
//  Skype
//
//  Created by ABHI on 10/11/21.
//

import UIKit
import FirebaseAuth

class Chat_Board: UIViewController {
    
    var messages: [Message] = []
    let itemcell = "MessageCell"

    @IBOutlet weak var messageTF: UITextField!
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: itemcell, bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: itemcell)

       
    }

    @IBAction func onClickSend(_ sender: Any) {
    }
}

extension Chat_Board : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: itemcell, for: indexPath) as! MessageCell
        cell.label.text = message.body
        
        //This is a message from the current user.
        if message.sender == Auth.auth().currentUser?.email {
            cell.leftImageView.isHidden = true
            cell.rightImageView.isHidden = false
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
            cell.label.textColor = UIColor(named: K.BrandColors.purple)
        }
        //This is a message from another sender.
        else {
            cell.leftImageView.isHidden = false
            cell.rightImageView.isHidden = true
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.purple)
            cell.label.textColor = UIColor(named: K.BrandColors.lightPurple)
        }
        
      
      
        return cell
    }
    
}
