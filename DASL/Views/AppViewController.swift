//
//  AppSelectionViewController.swift
//  _idx_MPPGraphGPUData_D7DBD543_ios_min10.0
//
//  Created by Afolabi Fashola on 04/03/22.
//

import UIKit

class AppViewController: UIViewController {
    
    @IBOutlet var PhrasesGif: UIImageView!
    @IBOutlet var AlphabetGif: UIImageView!
    @IBOutlet var AnimalsGif: UIImageView!
    @IBOutlet var ClothingGif: UIImageView!
    @IBOutlet var HouseholdItemsGif: UIImageView!
    @IBOutlet var SchoolGif: UIImageView!
    @IBOutlet var ActionsGif: UIImageView!
    @IBOutlet var OutdoorsGif: UIImageView!
    @IBOutlet var PeopleGif: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PhrasesGif.loadGif(name: "Phrases")
        AlphabetGif.loadGif(name: "Alphabet")
        AnimalsGif.loadGif(name: "Animals")
        ClothingGif.loadGif(name: "Clothing")
        HouseholdItemsGif.loadGif(name: "Household Items")
        SchoolGif.loadGif(name: "School")
        ActionsGif.loadGif(name: "Actions")
        OutdoorsGif.loadGif(name: "Outdoors")
        PeopleGif.loadGif(name: "People")

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
