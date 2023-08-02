//
//  FLMainTabBarController.swift
//  FunLife
//
//  Created by fangtianios on 2023/8/1.
//  Copyright © 2023 china. All rights reserved.
//

import UIKit

class FLMainTabBarController: UITabBarController {
    
    fileprivate lazy var homeViewController : FLHomeViewController = {
        let viewController : FLHomeViewController = UIStoryboard(name: "FLHome", bundle: .main).instantiateViewController(withIdentifier: "FLHomeViewController") as! FLHomeViewController
        let barItem : UITabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "首页未选中"), selectedImage: UIImage(named: "首页选择"))
        barItem.tag = 0
        viewController.tabBarItem = barItem
        return viewController
    }()
    
    fileprivate lazy var toolsMainViewController : FLToolsMainViewController = {
        let viewController : FLToolsMainViewController = UIStoryboard(name: "FLTools", bundle: .main).instantiateViewController(withIdentifier: "FLToolsMainViewController") as! FLToolsMainViewController
        let barItem : UITabBarItem = UITabBarItem(title: "工具", image: UIImage(named: "工具未选中"), selectedImage: UIImage(named: "工具选中"))
        barItem.tag = 1
        viewController.tabBarItem = barItem
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        initSubViewControllers()
    }
    
    fileprivate func initSubViewControllers() {
        self.tabBar.backgroundColor = UIColor(named: "淡灰色")
        self.tabBar.tintColor = UIColor(named: "蓝色")
        self.tabBar.barTintColor = UIColor(named: "白色")
        self.tabBar.backgroundImage = UIImage()
        self.viewControllers = [homeViewController,toolsMainViewController]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
