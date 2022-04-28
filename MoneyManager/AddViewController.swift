//
//  AddViewController.swift
//  MoneyManager
//
//  Created by gumball on 4/28/22.
//

import UIKit
import RealmSwift

class AddViewController: UIViewController {

    let realm = try! Realm()
    @IBOutlet weak var reasonTF: UITextField!
    @IBOutlet weak var moneyTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addButton(_ sender: Any) {
        try! realm.write {
            let _spend = Spend()
            _spend.reason = reasonTF.text!
            _spend.money = moneyTF.text!
            realm.add(_spend)
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tableVC = storyboard.instantiateViewController(identifier: "NavViewController")
                        
        tableVC.modalPresentationStyle = .fullScreen
        tableVC.modalTransitionStyle = .crossDissolve
                        
        present(tableVC, animated: true, completion: nil)
    }
    

}
