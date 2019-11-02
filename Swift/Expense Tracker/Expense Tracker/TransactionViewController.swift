//
//  TransactionViewController.swift
//  Expense Tracker
//
//  Created by Prabin Kumar on 14/09/19.
//  Copyright © 2019 Prabin Kumar. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    let sections: [String] = ["12-Sep-2019", "13-Sep-2019", "14-Sep-2019"]
    let s1Data: [String] = ["Row 1"]
    let s2Data: [String] = ["Row 1", "Row 2", "Row 3"]
    let s3Data: [String] = ["Salary", "Food & Drink", "Transport"]
    
    var sectionData: [Int: [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        sectionData = [0:s1Data, 1:s2Data, 2:s3Data]
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return (sectionData[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }

    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1,reuseIdentifier: "cell")
        cell.backgroundColor = UIColor.groupTableViewBackground
        cell.textLabel?.text = sections[section]
        cell.detailTextLabel?.text = "+\u{20B9} 10000.00"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1,reuseIdentifier: "cell")
            cell.textLabel?.text = sectionData[indexPath.section]![indexPath.row]
            cell.detailTextLabel?.text = "+\u{20B9} 10000.00"
            cell.detailTextLabel?.textColor = UIColor(red: 0, green: 0.65, blue: 0, alpha: 1)
            cell.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            let image = UIImage(named: "Test.png")
            cell.imageView!.image = image
            return cell
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
