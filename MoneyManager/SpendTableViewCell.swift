//
//  SpendTableViewCell.swift
//  MoneyManager
//
//  Created by gumball on 4/28/22.
//

import UIKit

class SpendTableViewCell: UITableViewCell {

    
    @IBOutlet weak var reasonLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
