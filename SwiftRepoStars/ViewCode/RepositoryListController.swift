//
//  RepositoryListController.swift
//  SwiftRepoStars
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit
import Networking

private let reuseIdentifier = "Cell"

class RepositoryListController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var viewModel = RepositoryListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupNavigationController()
        setupViewModelDelegate()
        requestRepositories(for: 1)
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
    
    private func setupViewModelDelegate() {
        viewModel.delegate = self
    }
    
    private func requestRepositories(for page: Int) {
        viewModel.getRepositories(for: page)
    }

    // MARK: - UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? RepositoriesCell else { return UICollectionViewCell() }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
}

extension RepositoryListController: RepositoryListViewModelAPI {
    func requestResult(error: Error?) {
        guard let error = error else {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            return }
        
        let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }
}
