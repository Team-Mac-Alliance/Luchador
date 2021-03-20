//
//  DietTableViewCell.swift
//  Fitocracy
//
//  Created by riddhi gupta on 20/03/21.
//

import UIKit

class DietTableViewCell: UITableViewCell {

   
    @IBOutlet weak var vector: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
