//
//  TitleListViewController.swift
//  FoldingMemoApp
//
//  Created by 小川卓馬 on 2021/04/06.
//

import UIKit

final class TitleListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(MemoDetailTableViewCell.nib(), forCellReuseIdentifier: MemoDetailTableViewCell.identifier)
    }


}

extension TitleListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MemoDetailTableViewCell.identifier, for: indexPath) as! MemoDetailTableViewCell
        return cell
    }
    
    
}
