//
//  ViewController.swift
//  Coordinators Continued
//
//  Created by Charles Martin Reed on 1/25/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    
    //MARK:- Properties
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK:-
    @IBAction func buyButtonTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createButtonTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    

}

