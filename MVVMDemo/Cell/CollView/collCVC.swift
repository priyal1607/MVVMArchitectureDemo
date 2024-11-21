//
//  collCVC.swift
//  MVVMDemo
//
//  Created by Priyal on 21/11/24.
//

import UIKit

class collCVC: UICollectionViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var IMG: UIImageView!
    var dataModel :tblModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.view.widthAnchor.constraint(equalToConstant: 300).isActive = true
       
        // Initialization code
    }
    func configCell(data : tblModel){
      
    }
    

}
