//
//  ViewController.swift
//  TableAndDetail
//
//  Created by Chockalingam, Nitya on 15/10/2024.
//

import UIKit

var selectedPerson = ("","","")

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Change staff to a mutable array
    var staff = [("Phil","A1.20","phil@liverpool.ac.uk"),    ("Terry","A2.18","trp@liverpool.ac.uk"),
    ("Valli","A2.12","V.Tamma@liverpool.ac.uk"),
    ("Boris","A1.15","Konev@liverpool.ac.uk")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return staff.count
    }
    
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let aCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = UIListContentConfiguration.cell()
        content.text = staff[indexPath.row].0
        aCell.contentConfiguration = content
        return aCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPerson = staff[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    // Enable swipe to delete
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            return true // Allow editing for all rows
        }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Remove the item from the data source
            staff.remove(at: indexPath.row)
            // Delete the row from the table view
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



