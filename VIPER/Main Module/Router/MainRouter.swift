//
//  MainRouter.swift
//  VIPER
//
//  Created by Salma Hassan on 3/17/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit.UIViewController

class MainRouter : PresenterToRouter {
    
    static func createModule() -> MainVC? {
        let view = MainVC()
        let presenter : ViewToPresenter & InteractorToPresenter = MainPresenter()
        let router : PresenterToRouter = MainRouter()
        let interactor : PresenterToInteractor = MainInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
        
    }
    
    func presentDetailsView(vc: UIViewController, _ news: News?) {
        guard let detailsModule = DetailsRouter.createModule() else { return }
        detailsModule.newsDescription = news?.desc
        vc.present(detailsModule, animated: true, completion: nil)
    }
    
    
    
}
