//
//  ViewController.swift
//  HorizontalMenuCollectionView
//
//  Created by Marcelo Perretta on 14/02/2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var horizontalMenuView: HorizontalMenuCollectionView = {
        let horizontalMenu = HorizontalMenuCollectionView(withItems:
                                                            [
            "Deportes", "Tecnología", "COVID", "Política", "Economīa", "Arte", "Fashion", "Salud", "Viaje"
        ])
        horizontalMenu.translatesAutoresizingMaskIntoConstraints = false
        horizontalMenu.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        horizontalMenu.backgroundColor = .tertiarySystemBackground
        return horizontalMenu
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(horizontalMenuView)

        NSLayoutConstraint.activate(
            [
                horizontalMenuView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                horizontalMenuView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                horizontalMenuView.heightAnchor.constraint(equalToConstant: 60.0),
                horizontalMenuView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
            ])
    }


}

