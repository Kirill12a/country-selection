//
//  CountryViewController.swift
//  flagsAction
//
//  Created by Kirill Drozdov on 23.11.2021.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    var country: Country?
    override func viewDidLoad() {
        super.viewDidLoad()
        countryLabel.text = country?.name
        capitalLabel.text = country?.capital
        imageView.image = country?.image
    }
    


}
