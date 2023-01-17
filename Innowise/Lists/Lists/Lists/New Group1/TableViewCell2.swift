//
//  TableViewCell2.swift
//  Lists
//
//  Created by 123 on 17.01.23.
//

import UIKit

class TableViewCell2: UITableViewCell {
    
    // 2 view 2 textfield
    
    private let avatarView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let sexImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let firstLineTextField: UILabel = {
        let textField = UILabel()
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let secondLineTextField: UILabel = {
        let textField = UILabel()
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        self.addSubview(avatarView)
        self.addSubview(sexImageView)
        self.addSubview(descriptionLabel)
        
        stackView = UIStackView(arrangedSubviews: [firstLineTextField, secondLineTextField, descriptionLabel],
                                axis: .vertical,
                                spacing: 0,
                                distribution: .fill)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)
    }
    
    func configurateUser(user: User) {
        self.avatarView.image = user.avatar
        self.firstLineTextField.text = user.firstName + " " + user.lastName
        self.secondLineTextField.text = String(user.age)
        self.descriptionLabel.text = user.dexcription
        self.sexImageView.image = user.sex
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            avatarView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            avatarView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            avatarView.heightAnchor.constraint(equalToConstant: 40),
            avatarView.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            sexImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            sexImageView.topAnchor.constraint(equalTo: avatarView.topAnchor),
            sexImageView.widthAnchor.constraint(equalToConstant: 24),
            sexImageView.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: avatarView.topAnchor, constant: -4),
            stackView.leadingAnchor.constraint(equalTo: avatarView.trailingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: sexImageView.leadingAnchor, constant: -10)
        ])
        
//        NSLayoutConstraint.activate([
//            descriptionLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
//            descriptionLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 5),
//            descriptionLabel.trailingAnchor.constraint(equalTo: stackView.)
//        ])
    }
 
}
