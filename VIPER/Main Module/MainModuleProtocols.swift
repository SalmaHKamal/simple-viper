//
//  MainModuleProtocols.swift
//  VIPER
//
//  Created by Salma Hassan on 3/17/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit

protocol ViewToPresenter : AnyObject {
    var view : PresenterToView? { get set }
    var router : PresenterToRouter? { get set }
    var interactor : PresenterToInteractor? { get set }
    
    func fetchData()
    func showDetailsView(viewController : UIViewController  , with singleNews : News?)
}

protocol PresenterToView : AnyObject {
    var presenter : ViewToPresenter? { get set }
    func reloadView(with news : [News])
}

protocol PresenterToInteractor : AnyObject {
    
    var presenter : InteractorToPresenter? {get set}
    func startRequest()
}

protocol InteractorToPresenter : AnyObject {
    func didFetchDataSuccessfully(with news : [News])
    func didFailedToFetchData(with error : String)
}

protocol PresenterToRouter : AnyObject {
    func presentDetailsView( vc : UIViewController , _ news : News?)
    static func createModule() -> MainVC?
}


