//
//  MainInteractor.swift
//  VIPER
//
//  Created by Salma Hassan on 3/17/20.
//  Copyright © 2020 salma. All rights reserved.
//

import Foundation

class MainInteractor : PresenterToInteractor {
    weak var presenter: InteractorToPresenter?
    
    func startRequest() {
        if let path = Bundle.main.path(forResource: "News", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let newsModel = try decoder.decode(NewsModel.self, from: data)
                self.presenter?.didFetchDataSuccessfully(with: newsModel.news)
            } catch {
                print(error.localizedDescription)
                self.presenter?.didFailedToFetchData(with: error.localizedDescription)
            }
        }
        
    }
    
    
}
