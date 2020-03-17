//
//  MainPresenter.swift
//  VIPER
//
//  Created by Salma Hassan on 3/17/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit.UIViewController

class MainPresenter : ViewToPresenter {
    
    weak var view: PresenterToView?
    var router: PresenterToRouter?
    var interactor: PresenterToInteractor?
    
    
    func fetchData() {
        interactor?.startRequest()
    }
    
    func showDetailsView(viewController: UIViewController, with singleNews: News?) {
        router?.presentDetailsView(vc: viewController, singleNews)
    }
}


extension MainPresenter : InteractorToPresenter {
    func didFailedToFetchData(with error: String) {
        print(error)
    }
    
    func didFetchDataSuccessfully(with news: [News]) {
        //==>> Note :if you want to persist data you should implement that here in presenter
        //==>> also if there is data formatting like date for example so you'll need to format it here before return it back to view to display it
        
        view?.reloadView(with: news)
    }
}
