//
//  TabBarController.swift
//  Lists
//
//  Created by 123 on 16.01.23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabBar()
    }
    
    // 2 метода, в одном описывается создание ВК, во втором собирают их вместе
    
    private func setUpTabBar() {
        let table1VC = createViewController(vc: ViewControllerTable(), tabBarItem: .bookmarks)
        let table2VC = createViewController(vc: ViewControllerTable2(), tabBarItem: .contacts)
        let collection1VC = createViewController(vc: ViewControllerCollection1(), tabBarItem: .favorites)
        let collection2VC = createViewController(vc: ViewControllerCollection2(), tabBarItem: .history)
        let table3VC = createViewController(vc: ViewControllerTable3(), tabBarItem: .mostRecent)
        
        viewControllers = [table1VC, table2VC, collection1VC, collection2VC, table3VC]
    }
    
    private func createViewController(vc: UIViewController, tabBarItem: UITabBarItem.SystemItem) -> UIViewController {
        let item = UITabBarItem(tabBarSystemItem: tabBarItem, tag: 0)
        let vc = vc
        vc.tabBarItem = item
        return vc
    }

}
