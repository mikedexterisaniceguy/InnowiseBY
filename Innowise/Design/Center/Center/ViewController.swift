//
//  ViewController.swift
//  Center
//
//  Created by 123 on 23.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    // 3 лейбла
    // 1 кнопку
    // стек вью, в который поместим все лейблы и кнопку
    // 1 вью (контейнер, в который поместим стек вью
    
    private let yellowLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let redLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let purpleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let cyanleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let greenButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let myView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 2
        view.layer.borderColor = .init(red: 142/255, green: 142/255, blue: 142/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.layoutMargins = .init(top: 10, left: 10, bottom: -10, right: -10)
        stackView.isLayoutMarginsRelativeArrangement = true
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        setContstraints()
    }
    
    private func setUpViews() {
        view.backgroundColor = .white
        
        
        stackView = UIStackView(arrangedSubviews: [purpleLabel, redLabel, yellowLabel, cyanleLabel, greenButton],
                                axis: .vertical,
                                spacing: 25,
                                distribution: .fill)
        
        stackView.layoutMargins = .init(top: 10, left: 10, bottom: 10, right: 10)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        stackView.layer.borderWidth = 2
        stackView.layer.borderColor = .init(red: 142/255, green: 142/255, blue: 142/255, alpha: 1)
        
        
        view.addSubview(myView)
        myView.addSubview(stackView)
    }
}

//MARK: - setConstraints

extension ViewController {
    private func setContstraints() {
        NSLayoutConstraint.activate([
            yellowLabel.heightAnchor.constraint(equalToConstant: 50),
            purpleLabel.heightAnchor.constraint(equalToConstant: 50),
            redLabel.heightAnchor.constraint(equalToConstant: 50),
            cyanleLabel.heightAnchor.constraint(equalToConstant: 50),
            greenButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }
}

