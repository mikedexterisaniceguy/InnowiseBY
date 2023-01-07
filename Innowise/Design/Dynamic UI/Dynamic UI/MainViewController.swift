//
//  ViewController.swift
//  Dynamic UI
//
//  Created by 123 on 6.01.23.
//

import UIKit

class MainViewController: UIViewController {

    private let firstVCButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Go to First VC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let secondVCButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Go to Second VC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let thirdVCButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Go to Third VC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpViews()
        setUpContsraints()
        
        firstVCButton.addTarget(self, action: #selector(goToFirstVC), for: .touchUpInside)
        secondVCButton.addTarget(self, action: #selector(goToSecondVC), for: .touchUpInside)
        thirdVCButton.addTarget(self, action: #selector(goToThirdtVC), for: .touchUpInside)
    }
    
//MARK: Set up views
    
    private func setUpViews() {
        view.addSubview(firstVCButton)
        view.addSubview(secondVCButton)
        view.addSubview(thirdVCButton)
    }
    
//MARK: Add push's
    
    @objc private func goToFirstVC() {
        let firstVC = FirstViewController()
        self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
    @objc private func goToSecondVC() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc private func goToThirdtVC() {
        let thirdVC = ThirdViewController()
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
}

//MARK: - Set up constraints

extension MainViewController {
    private func setUpContsraints() {
        NSLayoutConstraint.activate([
            secondVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            secondVCButton.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5),
            secondVCButton.heightAnchor.constraint(equalToConstant: view.frame.height / 10)
        ])
        
        NSLayoutConstraint.activate([
            firstVCButton.bottomAnchor.constraint(equalTo: secondVCButton.topAnchor, constant: -30),
            firstVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstVCButton.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5),
            firstVCButton.heightAnchor.constraint(equalToConstant: view.frame.height / 10)
        ])
        
        NSLayoutConstraint.activate([
            thirdVCButton.topAnchor.constraint(equalTo: secondVCButton.bottomAnchor, constant: 30),
            thirdVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdVCButton.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5),
            thirdVCButton.heightAnchor.constraint(equalToConstant: view.frame.height / 10)
        ])
    }
}

