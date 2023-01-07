//
//  ThirdViewController.swift
//  Dynamic UI
//
//  Created by 123 on 6.01.23.
//

import UIKit

class ThirdViewController: UIViewController {

    // 1 view 2 buttons
    
    private let removeAlphaButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Remove alpha", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let addAlphaButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Add alpha", for: .normal)
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
        imageView.image = UIImage(named: "Гродно")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = false
        imageView.alpha = 1
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let buttonsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "Third VC"
        
        setUpViews()
        setUpContsraints()
  
    }
    
//MARK: Set up views
    
    private func setUpViews() {
        view.addSubview(buttonsStackView)
        view.addSubview(itemView)
        itemView.addSubview(cityImageView)
        
        createButtonsStackView()
        
        addAlphaButton.addTarget(self, action: #selector(addAlpha), for: .touchUpInside)
        removeAlphaButton.addTarget(self, action: #selector(removeAlpha), for: .touchUpInside)
        
    }
    
//MARK: Create stackView
    
    private func createButtonsStackView() {
        buttonsStackView.addArrangedSubview(addAlphaButton)
        buttonsStackView.addArrangedSubview(removeAlphaButton)
        buttonsStackView.axis = .horizontal
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.alignment = .trailing
        buttonsStackView.spacing = 16
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
//MARK: Adding actions to buttons
    
    @objc private func addAlpha() {
        if cityImageView.alpha != 1 {
            cityImageView.alpha += 0.1
        } else { return }
    }
    
    @objc private func removeAlpha() {
        if cityImageView.alpha != 0 {
            cityImageView.alpha -= 0.1
        } else { return }
    }

}

//MARK: - Set up constraints

extension ThirdViewController {
    private func setUpContsraints() {
        NSLayoutConstraint.activate([
            itemView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            itemView.widthAnchor.constraint(equalToConstant: 300),
            itemView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            cityImageView.leadingAnchor.constraint(equalTo: itemView.leadingAnchor),
            cityImageView.topAnchor.constraint(equalTo: itemView.topAnchor),
            cityImageView.trailingAnchor.constraint(equalTo: itemView.trailingAnchor),
            cityImageView.bottomAnchor.constraint(equalTo: itemView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            addAlphaButton.heightAnchor.constraint(equalToConstant: 60),
            removeAlphaButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            buttonsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
