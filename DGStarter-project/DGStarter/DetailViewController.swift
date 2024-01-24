//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Gabey Moore on 22/01/2024.
//

import UIKit

class DetailViewController: UIViewController {
    var invScreens: InvScreens?
    
    
    @IBOutlet weak var superheroImageView: UIImageView!
    
    
    // Fact Labels
    @IBOutlet weak var whatLabel1: UILabel!
    @IBOutlet weak var whatLabel2: UILabel!
    @IBOutlet weak var whatLabel3: UILabel!
    @IBOutlet weak var factLabel1: UILabel!
    @IBOutlet weak var factLabel2: UILabel!
    @IBOutlet weak var factLabel3: UILabel!
 

    override func viewDidLoad() {
        // Property
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let invScreens  = invScreens {
            // Configure the dinosaur image and dynamic labels
            superheroImageView.image = invScreens.image
            whatLabel1.text = String(invScreens.what1)
            factLabel1.text = String(invScreens.fact1)
            whatLabel2.text = String(invScreens.what2)
            factLabel2.text = String(invScreens.fact2)
            whatLabel3.text = String(invScreens.what3)
            factLabel3.text = String(invScreens.fact3)
        }
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
