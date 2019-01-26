//
//  Storyboarded.swift
//  Coordinators Continued
//
//  Created by Charles Martin Reed on 1/25/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self //whatever conforms to the Storyboarded protocol will have an instantiate() method ON THE TYPE ITSELF, that returns the type
}

extension Storyboarded where Self : UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self) //ex: a string called "UIViewController" for the class name of the same
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self //this allows us to return the corresponding VC, predicated on the Storyboard ID matching the class name. We'll make sure this is the case, so the forced casting is fine.
    }
}
