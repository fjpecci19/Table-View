//
//  ViewController.swift
//  Table View
//
//  Created by Franco Pecci on 2023-08-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    struct transfers {
        let transaction: String
        let money: String
    }
    
    let data: [transfers] = [
        transfers(transaction: "verde", money: "25000"),
        transfers(transaction: "rojo", money: "-22000"),
        transfers(transaction: "verde", money: "25000"),
        transfers(transaction: "rojo", money: "-22000"),
        transfers(transaction: "verde", money: "25000"),
        transfers(transaction: "rojo", money: "-22000")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let transfer = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.icon.image = UIImage(named: transfer.transaction)
        cell.money.text = transfer.money
        return cell
    }
}
