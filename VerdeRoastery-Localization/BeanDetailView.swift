//
//  BeanDetailView.swift
//  l10n
//
//  Created by Benyamin on 10/19/20.
//

import UIKit

class BeanDetailView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var roastDateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var likesButton: UIButton!
    
    func display(bean:BeanDetail) {
        nameLabel.text = bean.name
        descriptionLabel.text = bean.description
        likesButton.setTitle("\(bean.likes)", for: .normal)
        
        // localizing number formats
        priceLabel.text = NumberFormatter.localizedString(from: NSNumber(value: bean.price), number: .currencyISOCode)
        
        // localizing date formats
        roastDateLabel.text = DateFormatter.localizedString(from: bean.roastDate, dateStyle: .medium, timeStyle: .none)
        
    }

}
