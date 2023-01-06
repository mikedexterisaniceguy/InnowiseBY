//
//  ProfileViewController.swift
//  Layout
//
//  Created by 123 on 6.01.23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // 2 вью
    // 8 лейблов
    
    private let backgroundProfileView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let iconProfileView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let bigTextLabel: UILabel = {
        let label = UILabel()
        label.text = "My text is bia as fuck! My text is bia as fuck! My text is bia as fuck! My text is bia as fuck! My text is bia as fuck!"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Name Forname"
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var followImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "follow")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let profilesArray = ProfilesArray()
    private var myTimer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Second"
        
        view.backgroundColor = .white
        
        setUpViews()
        setUpConstraints()
        createProfilesTimer()
    }
    
    private func setUpViews() {
        view.addSubview(backgroundProfileView)
        backgroundProfileView.addSubview(iconProfileView)
        backgroundProfileView.addSubview(bigTextLabel)
        backgroundProfileView.addSubview(nameTextLabel)
        backgroundProfileView.addSubview(followImage)

    }
    
    func createProfilesTimer() {
        myTimer = Timer.scheduledTimer(timeInterval: 5,
                                       target: self,
                                       selector: #selector(changeProfiles),
                                       userInfo: nil,
                                       repeats: true)
    }
    
    @objc private func changeProfiles() {
        if myTimer.timeInterval == 5 {
            let profile = profilesArray.profilesArray.randomElement()
            backgroundProfileView.backgroundColor = profile?.colourOne
            iconProfileView.backgroundColor = profile?.colourTwo
            bigTextLabel.text = profile?.bigText
            nameTextLabel.text = profile?.name
        }
    }
 
}

extension ProfileViewController {
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            backgroundProfileView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundProfileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundProfileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundProfileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            iconProfileView.leadingAnchor.constraint(equalTo: backgroundProfileView.leadingAnchor, constant: 20),
            iconProfileView.bottomAnchor.constraint(equalTo: backgroundProfileView.bottomAnchor, constant: -150),
            iconProfileView.widthAnchor.constraint(equalToConstant: 80),
            iconProfileView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        NSLayoutConstraint.activate([
            bigTextLabel.leadingAnchor.constraint(equalTo: iconProfileView.leadingAnchor),
            bigTextLabel.bottomAnchor.constraint(equalTo: iconProfileView.topAnchor, constant: -20),
            bigTextLabel.trailingAnchor.constraint(equalTo: backgroundProfileView.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            nameTextLabel.centerYAnchor.constraint(equalTo: iconProfileView.centerYAnchor),
            nameTextLabel.leadingAnchor.constraint(equalTo: iconProfileView.trailingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            followImage.centerYAnchor.constraint(equalTo: iconProfileView.centerYAnchor),
            followImage.trailingAnchor.constraint(equalTo: backgroundProfileView.trailingAnchor, constant: -20),
            followImage.widthAnchor.constraint(equalToConstant: 100),
            followImage.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
