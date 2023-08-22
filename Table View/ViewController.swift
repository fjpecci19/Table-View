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
        let icon: String
        let date: String
        let transaction: String
        let money: String
    }
    
    let data: [transfers] = [
        transfers(icon: "mas", date: "18-ago-2023 - 123456", transaction: "Transferencia internet banking", money: "Gs. 25000"),
        transfers(icon: "menos", date: "18-ago-2023 - 456789", transaction: "Transferencia enviada SPI", money: "Gs. -22000"),
        transfers(icon: "mas", date: "18-ago-2023 - 123456", transaction: "Transferencia internet banking", money: "Gs. 25000"),
        transfers(icon: "menos", date: "18-ago-2023 - 456789", transaction: "Transferencia enviada SPI", money: "Gs. -22000"),
        transfers(icon: "mas", date: "18-ago-2023 - 123456", transaction: "Transferencia internet banking", money: "Gs. 25000"),
        transfers(icon: "menos", date: "18-ago-2023 - 456789", transaction: "Transferencia enviada SPI", money: "Gs. -22000"),
        transfers(icon: "mas", date: "18-ago-2023 - 123456", transaction: "Transferencia internet banking", money: "Gs. 25000"),
        transfers(icon: "menos", date: "18-ago-2023 - 456789", transaction: "Transferencia enviada SPI", money: "Gs. -22000"),
        transfers(icon: "mas", date: "18-ago-2023 - 123456", transaction: "Transferencia internet banking", money: "Gs. 25000"),
        transfers(icon: "menos", date: "18-ago-2023 - 456789", transaction: "Transferencia enviada SPI", money: "Gs. -22000"),
        transfers(icon: "mas", date: "18-ago-2023 - 123456", transaction: "Transferencia internet banking", money: "Gs. 25000"),
        transfers(icon: "menos", date: "18-ago-2023 - 456789", transaction: "Transferencia enviada SPI", money: "Gs. -22000")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let transfer = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.icon.image = UIImage(named: transfer.icon)
        cell.date.text = transfer.date
        cell.transaction.text = transfer.transaction
        cell.money.text = transfer.money
        return cell
    }
}
