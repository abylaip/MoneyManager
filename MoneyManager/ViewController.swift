//
//  ViewController.swift
//  MoneyManager
//
//  Created by gumball on 4/28/22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let realm = try! Realm()
    let spends = try! Realm().objects(Spend.self)

    @IBOutlet weak var spenTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spenTableView.delegate = self
        spenTableView.dataSource = self
        self.spenTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SpendTableViewCell
        let _spends = spends[indexPath.row]
        cell.reasonLabel.text = _spends.reason
        cell.moneyLabel.text = _spends.money
        return cell
    }


}

