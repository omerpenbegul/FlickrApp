//
//  PhotoTableViewCell.swift
//  FlickrApp
//
//  Created by Ömer  PENBEGÜL on 8.05.2025.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleNameLabel: UILabel!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var PhotoImageView: UIImageView!
    @IBOutlet weak var OwnerImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
