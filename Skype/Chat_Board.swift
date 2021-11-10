//
//  Chat_Board.swift
//  Skype
//
//  Created by ABHI on 10/11/21.
//

import UIKit

class Chat_Board: UIViewController {

    @IBOutlet weak var messageTF: UITextField!
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func onClickSend(_ sender: Any) {
    }
}

extension Chat_Board : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
