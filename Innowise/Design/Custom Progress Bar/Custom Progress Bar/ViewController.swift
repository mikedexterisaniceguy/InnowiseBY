//
//  ViewController.swift
//  Custom Progress Bar
//
//  Created by 123 on 9.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    private let centerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let changeFigureButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate with random value", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor(red: 50/255, green: 137/255, blue: 143/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let centerBackgroundLayer = CAShapeLayer()
    private let centerForegroundLayer = CAShapeLayer()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        animateBackgroundLayer()
        animateForegroundLayer()
        
        changeFigureButton.addTarget(self, action: #selector(change), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpViews()
        setUpConstraints()
        
    }
    
    //MARK: Set up views
    
    private func setUpViews() {
        view.addSubview(centerView)
        view.addSubview(changeFigureButton)
        centerView.addSubview(valueLabel)
        
        
    }
    
    //MARK: Animations
    
    private func animateBackgroundLayer() {
        
        let width = centerView.frame.width * 0.95
        let height = centerView.frame.height * 0.95
        
        let widthForCentering = centerView.frame.width
        let heightForCentering = centerView.frame.height
        
        let lineWidth = 0.05 * min(width, height)
        
        let center = CGPoint(x: widthForCentering / 2, y: heightForCentering / 2)
        let radius = (min(width, height) - lineWidth) / 2
        
        let startAngle = -CGFloat.pi / 2
        let endAngle = startAngle + 2 * CGFloat.pi
        
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        centerBackgroundLayer.path = circularPath.cgPath
        
        centerBackgroundLayer.strokeColor = UIColor(red: 149/255, green: 197/255, blue: 200/255, alpha: 1).cgColor
        centerBackgroundLayer.fillColor = UIColor.clear.cgColor
        centerBackgroundLayer.lineWidth = lineWidth
        centerBackgroundLayer.lineCap = .round
        centerBackgroundLayer.strokeEnd = 1
        
        centerView.layer.addSublayer(centerBackgroundLayer)
    }
    
    private func animateForegroundLayer() {
        
        let width = centerView.frame.width
        let height = centerView.frame.height
        
        let lineWidth = 0.1 * min(width, height)
        
        let center = CGPoint(x: width / 2, y: height / 2)
        let radius = (min(width, height) - lineWidth) / 2
        
        let startAngle = -CGFloat.pi / 2
        let endAngle = startAngle + 2 * CGFloat.pi
        
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        centerForegroundLayer.path = circularPath.cgPath
        
        centerForegroundLayer.strokeColor = UIColor(red: 50/255, green: 137/255, blue: 143/255, alpha: 1).cgColor
        centerForegroundLayer.fillColor = UIColor.clear.cgColor
        centerForegroundLayer.lineWidth = lineWidth
        centerForegroundLayer.lineCap = .round
        centerForegroundLayer.strokeEnd = 4 / 100
        
        centerView.layer.addSublayer(centerForegroundLayer)
    }
    
    //MARK: Button
    
    @objc private func setRandomValue() {
        
        
    }
    
    @objc private func change() {
        let foo: [CGFloat] = [0.25, 0.45, 0.56, 0.67, 0.73, 0.85, 0.92]
        
        centerForegroundLayer.strokeEnd = foo.randomElement()!
        valueLabel.text = String(centerForegroundLayer.strokeEnd * 100)
    }
}


//MARK: - Set up constraints

extension ViewController {
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            centerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            centerView.widthAnchor.constraint(equalToConstant: 300),
            centerView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            changeFigureButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeFigureButton.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 30),
            changeFigureButton.widthAnchor.constraint(equalToConstant: 270)
        ])
        
        NSLayoutConstraint.activate([
            valueLabel.centerXAnchor.constraint(equalTo: centerView.centerXAnchor),
            valueLabel.centerYAnchor.constraint(equalTo: centerView.centerYAnchor)
        ])
    }
}

