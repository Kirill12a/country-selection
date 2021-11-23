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
        
        let india = Country(name: "india", capital: "new dalhi")
        countryies.append(india)
        let bel   =   Country(name: "bel", capital: "Minks")
        countryies.append(bel)
        let chine = Country(name: "chine", capital: "Pekin")
        countryies.append(chine)
        let rus = Country(name: "rus", capital: "Moscov")
        countryies.append(rus)
        
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
    
    
}

