//
//  Cell.swift
//  selfSizeCollectionViewCells
//
//  Created by Andrew Foghel on 6/24/18.
//  Copyright © 2018 StockX. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var viewWidthAnchor: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        let screenWidth = UIScreen.main.bounds.size.width
        viewWidthAnchor.constant = screenWidth
    }

}
