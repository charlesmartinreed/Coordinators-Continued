//
//  Coordinator.swift
//  Coordinators Continued
//
//  Created by Charles Martin Reed on 1/25/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
