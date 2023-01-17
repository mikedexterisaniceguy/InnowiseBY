//
//  ViewControllerTable2.swift
//  Lists
//
//  Created by 123 on 16.01.23.
//

import UIKit

class ViewControllerTable2: UIViewController {

    private let secondTable: UITableView = {
        let tableView = UITableView()
        tableView.register(TableViewCell2.self, forCellReuseIdentifier: "secondTable")
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
        
        secondTable.delegate = self
        secondTable.dataSource = self
        secondTable.rowHeight = 88

        setUpViews()
        setConstraints()
    }
    
    func setUpViews() {
        view.backgroundColor = .white
        view.addSubview(secondTable)
    }

}

//MARK: - constraints

extension ViewControllerTable2 {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            secondTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondTable.topAnchor.constraint(equalTo: view.topAnchor),
            secondTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ViewControllerTable2: UITableViewDelegate {
    
}

extension ViewControllerTable2: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondTable", for: indexPath) as! TableViewCell2
        let user = users.users[indexPath.row]
        cell.configurateUser(user: user)
        
        return cell
        
    }
}
