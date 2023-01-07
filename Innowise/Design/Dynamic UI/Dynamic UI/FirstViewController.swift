//
//  FirstViewController.swift
//  Dynamic UI
//
//  Created by 123 on 6.01.23.
//

import UIKit

class FirstViewController: UIViewController {

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
    
    private let cityImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Витебск")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let hiddenLabel: UILabel = {
        let label = UILabel()
        label.text = "Hidden"
        label.font = UIFont.systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let buttonsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "First VC"
        
        setUpViews()
        setUpContsraints()
        
        showButton.addTarget(self, action: #selector(showCity), for: .touchUpInside)
        hideButton.addTarget(self, action: #selector(hideCity), for: .touchUpInside)
    }
    
//MARK: Set up views

    private func setUpViews() {
        view.addSubview(buttonsStackView)
        view.addSubview(itemView)
        itemView.addSubview(hiddenLabel)
        itemView.addSubview(cityImageView)
        
        createButtonsStackView()
        
    }
   
//MARK: Create stackView
    
    private func createButtonsStackView() {
        buttonsStackView.addArrangedSubview(showButton)
        buttonsStackView.addArrangedSubview(hideButton)
        buttonsStackView.axis = .horizontal
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.alignment = .trailing
        buttonsStackView.spacing = 16
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
//MARK: Actions for buttons
    
    @objc private func hideCity() {
        cityImageView.isHidden = true
    }
    
    @objc private func showCity() {
        cityImageView.isHidden = false
    }
    
//MARK: - Set up constraints
    
}

extension FirstViewController {
    private func setUpContsraints() {
        NSLayoutConstraint.activate([
            itemView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            itemView.widthAnchor.constraint(equalToConstant: 300),
            itemView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            hiddenLabel.centerXAnchor.constraint(equalTo: itemView.centerXAnchor),
            hiddenLabel.centerYAnchor.constraint(equalTo: itemView.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cityImageView.leadingAnchor.constraint(equalTo: itemView.leadingAnchor),
            cityImageView.topAnchor.constraint(equalTo: itemView.topAnchor),
            cityImageView.trailingAnchor.constraint(equalTo: itemView.trailingAnchor),
            cityImageView.bottomAnchor.constraint(equalTo: itemView.bottomAnchor)
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
