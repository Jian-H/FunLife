//
//  FLRootViewController.swift
//  FunLife
//
//  Created by fangtianios on 2023/8/1.
//  Copyright © 2023 china. All rights reserved.
//

import UIKit
import SnapKit

class FLRootViewController: UIViewController {

    public lazy var mainNavigationController : FLMainNavigationController = {
        let nav : FLMainNavigationController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "FLMainNavigationController") as! FLMainNavigationController
        return nav
    }()
    
    public lazy var contentViewController : UIViewController = {
        return self.mainNavigationController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupSubviews()
    }
    
    fileprivate func setupSubviews() {
        self.view.addSubview(self.contentViewController.view)
        self.contentViewController.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        setNeedsStatusBarAppearanceUpdate()
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
