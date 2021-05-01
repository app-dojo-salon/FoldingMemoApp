//
//  AddMemoViewController.swift
//  FoldingMemoApp
//
//  Created by Kei on 2021/05/01.
//

import UIKit

class AddMemoViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MemoDetailTableViewCell.nib(), forCellReuseIdentifier: MemoDetailTableViewCell.identifier)
    }
}

extension AddMemoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MemoDetailTableViewCell.identifier, for: indexPath) as! MemoDetailTableViewCell
        return cell
    }
}
extension AddMemoViewController: UITableViewDelegate {
    
}
