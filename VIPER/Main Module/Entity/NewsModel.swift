//
//  WeatherModel.swift
//  VIPER
//
//  Created by Salma Hassan on 3/18/20.
//  Copyright © 2020 salma. All rights reserved.
//

import Foundation

struct NewsModel : Codable {
    var news : [News]
    
}

struct News : Codable {
    var title : String
    var desc : String
}
