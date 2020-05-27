//
//  RestaurantIntroductionTableViewCell.swift
//  ELeMel
//
//  Created by Aki on 2020/5/21.
//  Copyright © 2020 Aki. All rights reserved.
//

import UIKit

class RestaurantIntroductionTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var ratesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
