//
//  CustomCollectionViewCell.swift
//  Newsreadeck
//
//  Created by Marcelo Perretta on 08/02/2022.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var txtLab: PaddingLabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        txtLab.layer.cornerRadius = 15.0
        txtLab.layer.masksToBounds = true

        isSelected = false
    }

    override var isSelected: Bool {
      didSet {
          txtLab.backgroundColor = isSelected ? UIColor.red : UIColor.tertiarySystemBackground
          txtLab.layer.borderWidth = isSelected ? 0 : 0.5
          txtLab.layer.borderColor = isSelected ? UIColor.red.cgColor : UIColor.gray.cgColor

          txtLab.textColor = isSelected ? .white : .label
      }
    }
}
