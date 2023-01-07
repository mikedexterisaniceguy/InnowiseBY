//
//  ViewController.swift
//  Dynamic UI
//
//  Created by 123 on 7.01.23.
//

import UIKit

class ViewController: UIViewController {

    var myScrollView = UIScrollView()
    var myImageView = UIImageView()
    let myView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        let rect = CGRect(x: 0, y: 0, width: 300, height: 300)
        myView.frame = rect
        myView.center = view.center
        
    
        
        
        

        let imageToLoad = UIImage(named: "Минск")
        myImageView = UIImageView(image: imageToLoad)
        myImageView.contentMode = .scaleAspectFit
        myScrollView = UIScrollView(frame: self.myView.bounds)
        myScrollView.addSubview(myImageView)
        myScrollView.contentSize = self.myImageView.bounds.size
        self.view.addSubview(myView)
        myView.addSubview(myScrollView)
    }
    

}
