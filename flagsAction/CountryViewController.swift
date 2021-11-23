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
        
       
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseOut) { [self] in
            view.layoutIfNeeded()

            imageView.layer.cornerRadius = 30
            imageView.layer.borderColor = UIColor.purple.cgColor
            imageView.layer.borderWidth = 3
        } completion: { _ in
            print("completed")
        }

        
    }
    


}
