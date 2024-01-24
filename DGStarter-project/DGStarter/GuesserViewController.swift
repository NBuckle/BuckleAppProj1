//
//  ViewController.swift
//  DGStarter
//
//  Created by Maribel Montejano on 12/13/22.
//

import UIKit

class GuesserViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    let information = InvScreens(name: "Invincible", image: UIImage(named: "invfront")!, what1: "Region:", what2: "Age:", what3: "Occupation:", fact1: "Earth/Viltrum",fact2: "18",fact3: "Student")
     
    let characteristics = InvScreens(name: "Invincible", image: UIImage(named: "INVPUNCH")!, what1: "Strengths:", what2: "Weaknesses:", what3: "Wins/Losses:", fact1: "Fly,Super Strength", fact2: "Dad, Sympathy", fact3: "5/∞")
    

    // Array for storing Dinosaurs
    var inv_screens: [InvScreens] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Dinosaur models
        inv_screens = [information, characteristics]

        }


    @IBAction func didTapDinosaur(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.invScreens = inv_screens[0]
            } else if tappedView.tag == 1 {
                detailViewController.invScreens = inv_screens[1]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
}

