//
//  SecondViewController.swift
//  TestTableViewInTabBarController0606
//
//  Created by Yuan Zhou on 2019/06/06.
//  Copyright © 2019 BCKK. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    
    static var data = ["switch", "data2", "data3"]
    static var data2: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView2.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        tableView2.reloadData()
    }
}

extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 100 {
            return SecondViewController.data.count
        } else if tableView.tag == 101 {
            return SecondViewController.data2.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if tableView.tag == 100 {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel!.text = SecondViewController.data[indexPath.row]
            return cell
        } else if (tableView.tag == 101) {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
            cell.textLabel!.text = SecondViewController.data2[indexPath.row]
            return cell
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
            return cell
        }
    }
}

extension SecondViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            print("switch table")
            self.tableView.isHidden = !self.tableView.isHidden
            self.tableView2.isHidden = !self.tableView2.isHidden
        default:
            print("row.\(indexPath.row) selected")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
