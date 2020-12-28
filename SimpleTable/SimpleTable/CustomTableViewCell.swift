//
//  CustomTableViewCell.swift
//  SimpleTable
//
//  Created by 한상진 on 2020/12/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var leftLable:UILabel!
    @IBOutlet var rightLable:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
