//
//  DetailsVC.swift
//  VIPER
//
//  Created by Salma Hassan on 3/18/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var presenter : DetailsViewToPresenter?
    var newsDescription : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let desc = newsDescription {
            label.text = desc
        }
        
        presenter?.viewDidLoad()
        
    }
}

extension DetailsVC : DetailsPresenterToView{
    
}
