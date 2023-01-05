//
//  ViewController.swift
//  Пипетка
//
//  Created by 123 on 5.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    // 6 вьюх, все рассчитать в % от вью зеленый, фиолетовый, голубой, красный, черный, желтый
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 239/250, green: 48/250, blue: 36/250, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 152/250, green: 203/250, blue: 3/250, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 52/250, green: 181/250, blue: 229/250, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 169/250, green: 102/250, blue: 204/250, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0/250, green: 0/250, blue: 0/250, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 255/250, green: 136/250, blue: 0/250, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        setUpContsrtaints()
    }
    
    private func setUpViews() {
        view.backgroundColor = .white
        
        view.addSubview(redView)
        redView.addSubview(greenView)
        redView.addSubview(blueView)
        redView.addSubview(purpleView)
        redView.addSubview(blackView)
        blackView.addSubview(orangeView)
    }
}

extension ViewController {
    private func setUpContsrtaints() {
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            redView.heightAnchor.constraint(equalToConstant: view.frame.width / 1.25),
            redView.widthAnchor.constraint(equalToConstant: view.frame.width / 1.25)
        ])
        
        NSLayoutConstraint.activate([
            greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 0),
            greenView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 0),
            greenView.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            greenView.widthAnchor.constraint(equalToConstant: view.frame.width / 10)
        ])
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 0),
            blueView.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0),
            blueView.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            blueView.widthAnchor.constraint(equalToConstant: view.frame.width / 10)
        ])
        
        NSLayoutConstraint.activate([
            purpleView.centerXAnchor.constraint(equalTo: redView.centerXAnchor, constant: 0),
            purpleView.centerYAnchor.constraint(equalTo: redView.centerYAnchor, constant: 0),
            purpleView.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            purpleView.widthAnchor.constraint(equalToConstant: view.frame.width / 10)
        ])
        
        NSLayoutConstraint.activate([
            blackView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: 0),
            blackView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 0),
            blackView.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            blackView.widthAnchor.constraint(equalToConstant: view.frame.width / 10)
        ])
        
        NSLayoutConstraint.activate([
            orangeView.trailingAnchor.constraint(equalTo: blackView.trailingAnchor, constant: 0),
            orangeView.topAnchor.constraint(equalTo: blackView.topAnchor, constant: 0),
            orangeView.heightAnchor.constraint(equalToConstant: view.frame.width / 20),
            orangeView.widthAnchor.constraint(equalToConstant: view.frame.width / 20)
        ])
        
        
    }
}
