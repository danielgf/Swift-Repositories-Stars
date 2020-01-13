//
//  RepositoryListController.swift
//  SwiftRepoStars
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class RepositoryListController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupNavigationController()
    }
    
    // MARK: - Internal Functions
    private func setupCollectionView() {
        collectionView.backgroundColor = .white
        collectionView.register(RepositoriesCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    private func setupNavigationController() {
        title = "Repositories"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
}
