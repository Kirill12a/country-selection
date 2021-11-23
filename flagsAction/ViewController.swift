//
//  ViewController.swift
//  flagsAction
//
//  Created by Kirill Drozdov on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var countryies = [Country]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let india = Country(name: "India", capital: "New Delhi)")
        countryies.append(india)
        let bel   =   Country(name: "Belarus", capital: "Minks")
        countryies.append(bel)
        let chine = Country(name: "Chine", capital: "Pekin")
        countryies.append(chine)
        let rus = Country(name: "Russia", capital: "Moscov")
        countryies.append(rus)
        let usa = Country(name: "USA", capital: "Washington")
        countryies.append(usa)
        let arab = Country(name: "United Arab Emirates", capital: "Abu Dhabi")
        countryies.append(arab)
        
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryies.count
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = countryies[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedInex = indexPath.row
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CountryViewController{
            destination.country = countryies[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1.0)
        UIView.animate(withDuration: 1.5,
                       animations: {
            cell.layer.transform = CATransform3DMakeScale(1.0, 1.0, 1.0)
        }, completion: nil)
        
    }

}

