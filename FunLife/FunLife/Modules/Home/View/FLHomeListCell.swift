//
//  FLHomeListCell.swift
//  FunLife
//
//  Created by fangtianios on 2023/8/2.
//  Copyright © 2023 china. All rights reserved.
//

import UIKit

class FLHomeListCell: UITableViewCell {

    @IBOutlet weak var textContentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configHomeListCell(item : FLHomeDataItem) {
        textContentLabel.text = item.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
