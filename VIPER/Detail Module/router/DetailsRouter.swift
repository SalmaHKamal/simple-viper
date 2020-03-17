//
//  DetailsRouter.swift
//  VIPER
//
//  Created by Salma Hassan on 3/18/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit

class DetailsRouter : DetailsPresenterToRouter {
    
    
    static func createModule() -> DetailsVC? {
        let view = DetailsVC()
        let presenter : DetailsViewToPresenter & DetailsInteractorToPresenter = DetailsPresenter()
        let interactor : DetailsPresenterToInteractor = DetailsInteractor()
        let router : DetailsPresenterToRouter = DetailsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        
        return view
    }
    
    
    func dismissView(currentView: UIViewController) {
        currentView.dismiss(animated: true, completion: nil)
    }
}
