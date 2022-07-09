//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Artem Poletaev on 06.07.2022.
//

import UIKit

class ProfileView: UIView{
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabelView: UILabel!
    @IBOutlet weak var birthdayLabelView: UILabel!
    @IBOutlet weak var cityLabelView: UILabel!
    @IBOutlet weak var signatureTextView: UITextView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    
    private func setup() {
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else {
            return UIView()
        }
        
        return view
        
    }
    
}
