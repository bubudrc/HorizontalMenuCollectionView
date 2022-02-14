//
//  HorizontalMenuCollectionView .swift
//  Newsreadeck
//
//  Created by Marcelo Perretta on 08/02/2022.
//

import UIKit

class HorizontalMenuCollectionView: UICollectionView {
    var collectionSource: [String] = []

    lazy var horizontalLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = CGSize(width: 150, height: 60)
        layout.scrollDirection = .horizontal
        return layout
    }()

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setupCollectionView()
    }

    convenience init(frame: CGRect = .zero, withItems menu: [String]) {
        self.init(frame: frame, collectionViewLayout: UICollectionViewLayout())
        self.collectionSource = menu
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupCollectionView()
    }

    private func setupCollectionView() {
        self.collectionViewLayout = horizontalLayout
        self.dataSource = self
        self.delegate = self
        self.showsHorizontalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        self.decelerationRate = .fast

        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: "cell")
    }
}

extension HorizontalMenuCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionSource.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCollectionViewCell else {
            return UICollectionViewCell()
        }

        cell.txtLab.text = collectionSource[indexPath.row]
        return cell
    }
}
