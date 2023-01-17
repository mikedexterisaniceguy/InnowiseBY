//
//  ViewControllerTable.swift
//  Lists
//
//  Created by 123 on 16.01.23.
//

import UIKit

class ViewControllerTable: UIViewController {
    
    private let firstTable: UITableView = {
        let tableView = UITableView()
        tableView.register(TableViewCell1.self, forCellReuseIdentifier: "firstTable")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    private let users: UserGenerator = {
        var users = UserGenerator()
        users.setUser()
        return users
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTable.delegate = self
        firstTable.dataSource = self
        firstTable.rowHeight = 72

        setUpViews()
        setConstraints()
    }
    
    func setUpViews() {
        view.backgroundColor = .white
        view.addSubview(firstTable)
    }
}

//MARK: - constraints

extension ViewControllerTable {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            firstTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            firstTable.topAnchor.constraint(equalTo: view.topAnchor),
            firstTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ViewControllerTable: UITableViewDelegate {
    
}

extension ViewControllerTable: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstTable", for: indexPath) as! TableViewCell1
        let user = users.users[indexPath.row]
        cell.configurateUser(user: user)
        
        return cell
        
    }
}
