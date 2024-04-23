//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Brianna John on 4/23/24.
//

import UIKit

class DetailViewController: UIViewController {
    // Property
    var dinosaur: Dinosaur?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let dinosaur = dinosaur {
            print(dinosaur.name)
                // Configure the dinosaur image and dynamic labels
            clubImageView.image = dinosaur.image
            clubNameLabel.text = dinosaur.name
            appsNumber.text = String(dinosaur.apps)
            goalsNumber.text = String(dinosaur.goals)
            assistsNumber.text = String(dinosaur.assists)
        }

        
    }
    

    @IBOutlet weak var clubImageView: UIImageView!
    @IBOutlet weak var appsNumber: UILabel!
    
    @IBOutlet weak var clubNameLabel: UILabel!
    
    @IBOutlet weak var goalsNumber: UILabel!
    
    @IBOutlet weak var assistsNumber: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
