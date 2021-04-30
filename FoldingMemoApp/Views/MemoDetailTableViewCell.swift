//
//  MemoDetailTableViewCell.swift
//  FoldingMemoApp
//
//  Created by 小川卓馬 on 2021/04/17.
//

import UIKit

final class MemoDetailTableViewCell: UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
