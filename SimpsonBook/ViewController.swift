//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Doğukan Aydemir on 26.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var simpsonArray = [Simpsons]()
    var chosenSimpson: Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    // Simpson Object
        
        let homer = Simpsons(name: "Homer Simpson", image: UIImage(named: "HomerSimpson")!, job: "Nuclear Safety")
        let marge = Simpsons(name: "Marge Simpson", image: UIImage(named: "MargeSimpson")!, job: "Housewife")
        let bart = Simpsons(name: "Bart Simpson", image: UIImage(named: "BartSimpson")!, job: "Student")
        let lisa = Simpsons(name: "Lisa Simpson", image: UIImage(named: "LisaSimpson")!, job: "Sister")
        let maggie = Simpsons(name: "Maggie Simpson", image: UIImage(named: "MaggieSimpson")!, job: "Baby")
        
        simpsonArray.append(homer)
        simpsonArray.append(marge)
        simpsonArray.append(bart)
        simpsonArray.append(lisa)
        simpsonArray.append(maggie)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = simpsonArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = chosenSimpson

        }
    }


}

