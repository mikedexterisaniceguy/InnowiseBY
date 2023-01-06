//
//  ViewController.swift
//  Layout
//
//  Created by 123 on 5.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    private let bsckgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let pushButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Go to profiles", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var myTimer = Timer()
    var myProfile = Profile()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.title = "First "
        
        view.addSubview(bsckgroundView)
        view.addSubview(pushButton)
        
        pushButton.addTarget(self, action: #selector(pushToProfileVC), for: .touchUpInside)
        
        createTimer()
        
        NSLayoutConstraint.activate([
            bsckgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bsckgroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            bsckgroundView.heightAnchor.constraint(equalToConstant: view.frame.width / 3),
            bsckgroundView.widthAnchor.constraint(equalToConstant: view.frame.width / 3)
        ])
        
        NSLayoutConstraint.activate([
            pushButton.centerXAnchor.constraint(equalTo: bsckgroundView.centerXAnchor),
            pushButton.topAnchor.constraint(equalTo: bsckgroundView.bottomAnchor, constant: 20),
            pushButton.widthAnchor.constraint(equalToConstant: 150),
            pushButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func pushToProfileVC() {
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
    
    func createTimer() {
        myTimer = Timer.scheduledTimer(timeInterval: 5,
                                       target: self,
                                       selector: #selector(updateColour),
                                       userInfo: nil,
                                       repeats: true)
    }
    
    @objc func updateColour() {
        if myTimer.timeInterval == 5 {
            bsckgroundView.backgroundColor = myProfile.colours.randomElement()
        }
    }


}

