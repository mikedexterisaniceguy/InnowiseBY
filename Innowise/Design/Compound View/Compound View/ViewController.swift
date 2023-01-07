//
//  ViewController.swift
//  Compound View
//
//  Created by 123 on 7.01.23.
//

import UIKit

class ViewController: UIViewController {

    private let colourView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let previousButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        button.tintColor = .white
        button.setTitle("Prevoius", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .red
        button.setTitle("Next", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let textValueLabel: UILabel = {
        let label = UILabel()
        label.text = "Text value"
        label.textColor = .black
        label.layer.borderWidth = 1
        label.isHighlighted = true
        //label.highlightedTextColor = .gray
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let elementsStackView = UIStackView()
    var colursArray = myColour
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        setUpViews()
        setUpConstraints()
        
        previousButton.addTarget(self, action: #selector(previousButtonTapped), for: .touchUpInside)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
    }
    
    //MARK: Set up views
    
    private func setUpViews() {
        view.addSubview(colourView)
        view.addSubview(elementsStackView)
        createStackView()
    }
    
    //MARK: Create UIStackView

    private func createStackView() {
        elementsStackView.addArrangedSubview(previousButton)
        elementsStackView.addArrangedSubview(textValueLabel)
        elementsStackView.addArrangedSubview(nextButton)
        elementsStackView.axis = .horizontal
        elementsStackView.distribution = .fillEqually
        elementsStackView.alignment = .center
        elementsStackView.spacing = 15
        elementsStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    //MARK: Creatimg actions for buttons
    
    @objc private func previousButtonTapped() {
        let counter = colursArray.counter
        if counter == 0 {
            colourView.backgroundColor = colursArray.coloursArray[10]
            textValueLabel.text = colursArray.namesOfColours[10]
            
            colursArray.counter = 10
        } else if (1...9).contains(counter) {
            colourView.backgroundColor = colursArray.coloursArray[counter-1]
            textValueLabel.text = colursArray.namesOfColours[counter-1]
            
            colursArray.counter -= 1
        }
        else if counter == 10 {
            colourView.backgroundColor = colursArray.coloursArray[counter-1]
            textValueLabel.text = colursArray.namesOfColours[counter-1]
            
            colursArray.counter -= 1
        }
    }
    
    @objc private func nextButtonTapped() {
        let counter = colursArray.counter
        if counter == 0 {
            colourView.backgroundColor = colursArray.coloursArray[counter+1]
            textValueLabel.text = colursArray.namesOfColours[counter+1]
            
            colursArray.counter += 1
        } else if (1...9).contains(counter) {
            colourView.backgroundColor = colursArray.coloursArray[counter+1]
            textValueLabel.text = colursArray.namesOfColours[counter+1]
            
            colursArray.counter += 1
        } else if counter == 10 {
            colourView.backgroundColor = colursArray.coloursArray[0]
            textValueLabel.text = colursArray.namesOfColours[0]
            
            colursArray.counter = 0
        }
    }

}

//MARK: - setUpConstraints

extension ViewController {
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            colourView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            colourView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            colourView.widthAnchor.constraint(equalToConstant: 300),
            colourView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            previousButton.heightAnchor.constraint(equalToConstant: 60),
            textValueLabel.heightAnchor.constraint(equalToConstant: 30),
            //textValueLabel.widthAnchor.constraint(equalToConstant: 100),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
        ])
        
        NSLayoutConstraint.activate([
            elementsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            elementsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            elementsStackView.topAnchor.constraint(equalTo: colourView.bottomAnchor, constant: 50)
        ])
    }
}

