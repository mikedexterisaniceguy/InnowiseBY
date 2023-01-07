//
//  SecondViewController.swift
//  Dynamic UI
//
//  Created by 123 on 6.01.23.
//

import UIKit

class SecondViewController: UIViewController {

    // 1 view 2 buttons
    
    private let hideButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Hide", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let showButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Show", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let itemView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let buttonsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "First VC"
        
        setUpViews()
        setUpContsraints()
  
    }
    
    private func setUpViews() {
        view.addSubview(buttonsStackView)
        view.addSubview(itemView)
        
        createButtonsStackView()
        
    }
    
    private func createButtonsStackView() {
        buttonsStackView.addArrangedSubview(showButton)
        buttonsStackView.addArrangedSubview(hideButton)
        buttonsStackView.axis = .horizontal
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.alignment = .trailing
        buttonsStackView.spacing = 16
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    

}

extension SecondViewController {
    private func setUpContsraints() {
        NSLayoutConstraint.activate([
            itemView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            itemView.widthAnchor.constraint(equalToConstant: 300),
            itemView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            hideButton.heightAnchor.constraint(equalToConstant: 60),
            showButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            buttonsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
