//
//  detailsViewVC.swift
//  MVVMDemo
//
//  Created by Priyal on 21/11/24.
//

import UIKit

class detailsViewVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    
    func configCell (data : tblModel){
       
    }
    @IBAction func btnBackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
