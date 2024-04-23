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
    let santos = Dinosaur(name:"Santos FC", image: UIImage(named: "santos")!,goals: 220 , assists: 134, apps: 77)
    let barcelona = Dinosaur(name: "Barcelona FC", image: UIImage(named: "barca")!, goals: 105, assists: 76, apps: 186)
    let psg = Dinosaur(name: "Paris Saint Germain", image: UIImage(named: "psg")!, goals: 118 , assists: 77, apps: 173 )
    let brazil = Dinosaur(name: "Brazil", image: UIImage(named: "brazil")!, goals: 79 , assists: 59, apps: 128 )
    

    // Array for storing Dinosaurs
    var dinosaurs: [Dinosaur] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Dinosaur models
        dinosaurs = [santos, barcelona,psg,brazil]

        print("Here are the different dinosaurs:")
        for dinosaur in dinosaurs {
            print(dinosaur)
        }
        
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
                detailViewController.dinosaur = dinosaurs[0]
            } else if tappedView.tag == 1 {
                detailViewController.dinosaur = dinosaurs[1]
            } else if tappedView.tag == 2 {
                detailViewController.dinosaur = dinosaurs[2]
            } else if tappedView.tag == 3 {
                detailViewController.dinosaur = dinosaurs[3]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
    

}

