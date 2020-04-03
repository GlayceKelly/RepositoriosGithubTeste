//
//  ReposTableViewCell.swift
//  GetRepositoriosTeste
//
//  Created by Glayce on 02/04/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import UIKit

class ReposTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbLanguage: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
