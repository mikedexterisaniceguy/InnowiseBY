//
//  TableViewCell1.swift
//  Lists
//
//  Created by 123 on 17.01.23.
//

import UIKit

class TableViewCell1: UITableViewCell {

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
    
    private let firstLineTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let secondLineTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        
        stackView = UIStackView(arrangedSubviews: [firstLineTextField, secondLineTextField],
                                axis: .vertical,
                                spacing: 0,
                                distribution: .fillEqually)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)
    }
    
    func configurateUser(user: User) {
        self.avatarView.image = user.avatar
        self.firstLineTextField.text = user.firstName + " " + user.lastName
        self.secondLineTextField.text = String(user.age)
        self.sexImageView.image = user.sex
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            avatarView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            avatarView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarView.heightAnchor.constraint(equalToConstant: 40),
            avatarView.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            sexImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            sexImageView.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor),
            sexImageView.widthAnchor.constraint(equalToConstant: 24),
            sexImageView.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: avatarView.trailingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: sexImageView.leadingAnchor, constant: -10)
        ])
    }
 
}
