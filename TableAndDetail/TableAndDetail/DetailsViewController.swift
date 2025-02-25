//
//  DetailsViewController.swift
//  TableAndDetail
//
//  Created by Chockalingam, Nitya on 15/10/2024.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var roomLabel: UILabel!
    
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedPerson.0
        
        roomLabel.text = selectedPerson.1
        
        emailLabel.text = selectedPerson.2
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
