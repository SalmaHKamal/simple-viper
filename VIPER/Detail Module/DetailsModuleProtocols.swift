//
//  DetailsModuleProtocols.swift
//  VIPER
//
//  Created by Salma Hassan on 3/18/20.
//  Copyright © 2020 salma. All rights reserved.
//

import UIKit

protocol DetailsViewToPresenter : AnyObject {
    var view : DetailsPresenterToView? { get set}
    var router : DetailsPresenterToRouter? { get set}
    var interactor : DetailsPresenterToInteractor? { get set }
    
    func viewDidLoad()
}

protocol DetailsPresenterToView : AnyObject {
    var presenter : DetailsViewToPresenter? { get set }
}

protocol DetailsPresenterToInteractor : AnyObject {
    var presenter : DetailsInteractorToPresenter? { get set}
}

protocol DetailsInteractorToPresenter : AnyObject {
    
}

protocol DetailsPresenterToRouter : AnyObject {
    static func createModule() -> DetailsVC?
    func dismissView(currentView : UIViewController)
}
