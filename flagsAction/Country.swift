//
//  Country.swift
//  flagsAction
//
//  Created by Kirill Drozdov on 23.11.2021.
//

import Foundation
import UIKit

class Country{
    var name: String
    var capital: String
    var image: UIImage
    
    init(name:String, capital: String) {
        self.name = name
        self.capital = capital
        
        image = UIImage(named: self.name) ?? UIImage(named: "rus")!
    }
}
