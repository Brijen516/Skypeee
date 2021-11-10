//
//  ChatTBC.swift
//  Skype
//
//  Created by ABHI on 10/11/21.
//

import UIKit

class ChatTBC: UITableViewCell {
    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var lbMessage: UILabel!
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var IMG: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
