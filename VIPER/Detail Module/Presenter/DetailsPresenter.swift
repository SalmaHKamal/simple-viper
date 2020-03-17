//
//  DetailsPresenter.swift
//  VIPER
//
//  Created by Salma Hassan on 3/18/20.
//  Copyright © 2020 salma. All rights reserved.
//

import Foundation

class DetailsPresenter: DetailsViewToPresenter {
    
    weak var view: DetailsPresenterToView?
    var router: DetailsPresenterToRouter?
    var interactor: DetailsPresenterToInteractor?
    
    func viewDidLoad() {
        print("view loaded")
    }
}

extension DetailsPresenter : DetailsInteractorToPresenter {
    
}
