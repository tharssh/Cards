//
//  CustomHeader.swift
//  CodeZero
//
//  Created by InsightzClub on 07/04/2020.
//  Copyright © 2020 Tharsshinee. All rights reserved.
//

import UIKit

class CustomHeader: UITableViewCell {

    @IBOutlet weak var hView: UIView!
    @IBOutlet weak var cardtype: UILabel!
    @IBOutlet weak var cardDetails: UILabel!
    @IBOutlet weak var cardSubdetails: UILabel!
    @IBOutlet weak var disclosureBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func headerType(section:Int) {
        let att = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)]
        
        let boldCard = NSMutableAttributedString(string:"Card", attributes:att)

        if section == 0{
            let type:NSMutableString = "White"
            disclosureBtn.isHidden = true
            cardtype.attributedText = attributedText(type: "White")
        }
        else{
            
            cardtype.attributedText = attributedText(type: "Black")
            cardtype.textColor = .white
            cardDetails.text = "Be Professional"
            cardDetails.textColor = .cyan
            cardSubdetails.text = "Your official company card"
            cardSubdetails.textColor = .white
            hView.backgroundColor = .darkGray
            disclosureBtn.backgroundColor = .darkGray
            disclosureBtn.tintColor = .white
        }
    }
    
    func attributedText(type:String) -> NSAttributedString {
        
        let string = "\(type)Card" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 17.0)])
        
        let boldFontAttribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Card"))
        
        // 4
        return attributedString
    }
}
