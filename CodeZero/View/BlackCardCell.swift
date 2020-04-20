//
//  BlackCardCell.swift
//  CodeZero
//
//  Created by InsightzClub on 08/04/2020.
//  Copyright © 2020 Tharsshinee. All rights reserved.
//

import UIKit

class BlackCardCell: UITableViewCell {
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var viewBtn: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var exchangeBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
            
        //border
        viewBtn.layer.borderColor = UIColor.white.cgColor
        viewBtn.layer.borderWidth  = 1.0
        viewBtn.layer.cornerRadius = 5
        
        //rounded image
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        profileImage.clipsToBounds = true
        
        //view
        baseView.layer.cornerRadius = 10
        detailsView.roundedCorners(corners: [.layerMinXMinYCorner, .layerMaxXMinYCorner], radius: 10)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
