//
//  CardCell.swift
//  CodeZero
//
//  Created by InsightzClub on 07/04/2020.
//  Copyright © 2020 Tharsshinee. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {


    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var viewBtn: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var exchangeBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //shadow
//        detailsView.dropShadow()
        
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

}
extension UIView {
    func roundedCorners(corners:CACornerMask, radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = corners
    }
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 1
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
