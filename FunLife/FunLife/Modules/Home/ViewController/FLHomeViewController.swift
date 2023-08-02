//
//  FLHomeViewController.swift
//  FunLife
//
//  Created by fangtianios on 2023/8/2.
//  Copyright © 2023 china. All rights reserved.
//

import UIKit

class FLHomeViewController: FLBaseViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate lazy var dataManager : FLHomeDataManager = {
        let manager : FLHomeDataManager = FLHomeDataManager()
        return manager
    }()
    
    fileprivate lazy var dataSource : Array<FLHomeDataItem> = {
        return dataManager.contentArray
    }()
//    fileprivate lazy let dataManager : FLHomeDataManager = {
//        return FLHomeDataManager()
//    }()
//
//    fileprivate lazy var dataSource : [String]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : FLHomeListCell = tableView.dequeueReusableCell(withIdentifier: "FLHomeListCell", for: indexPath) as! FLHomeListCell
        cell.configHomeListCell(item: dataSource[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item : FLHomeDataItem = dataSource[indexPath.row]
        switch item.id {
        case 0:
            let moyaViewController : FLMoyaViewController = storyboard?.instantiateViewController(withIdentifier: "FLMoyaViewController") as! FLMoyaViewController;
            navigationController?.pushViewController(moyaViewController, animated: true)
        default:
            break
        }
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
