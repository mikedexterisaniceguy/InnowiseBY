//
//  ViewController.swift
//  z-order
//
//  Created by 123 on 5.01.23.
//

import UIKit

class ViewController: UIViewController {
    
  
    
    private var stackView = UIStackView()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let secondYellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        
        view.addSubview(blueView)
        blueView.addSubview(stackView)
        
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(yellowView)
        stackView.addArrangedSubview(secondYellowView)
        stackView.addArrangedSubview(greenView)
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 0
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        setConstraints()
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            redView.heightAnchor.constraint(equalToConstant: view.frame.height / 1.5),
            greenView.heightAnchor.constraint(equalToConstant: view.frame.height / 1.2),
            yellowView.heightAnchor.constraint(equalToConstant: view.frame.height / 1.15),
            secondYellowView.heightAnchor.constraint(equalToConstant: view.frame.height / 1.15),
        ])
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            blueView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: blueView.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: blueView.bottomAnchor)
        ])
    }
}

 

