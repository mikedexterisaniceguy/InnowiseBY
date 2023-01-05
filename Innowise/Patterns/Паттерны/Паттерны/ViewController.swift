//
//  ViewController.swift
//  Паттерны
//
//  Created by 123 on 21.11.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sun = Sun.shared
        
        print(sun.degree)
        print(sun.distance)
        print(sun.color)
    }


}

