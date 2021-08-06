//
//  ViewController.swift
//  AutoLoyout
//
//  Created by gunta.golde on 24/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var styleOutletsCollection: [UIButton]!
    @IBOutlet weak var buttonDOutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.darkGray.cgColor
            button.layer.borderWidth = 2
            
        }
    }

    @IBAction func refreshItemTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonDOutlet.isHidden = false
    }
    
    @IBAction func buttonATapped(_ sender: Any) {
        navigationItem.title = "Button A"
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.setImage(UIImage(systemName: "trash"), for: .normal)
        self.buttonDOutlet.backgroundColor = UIColor.white
    }
    
}

