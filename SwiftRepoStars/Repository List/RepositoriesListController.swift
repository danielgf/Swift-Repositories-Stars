//
//  RepositoriesListController.swift
//  SwiftRepoStars
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit
import Networking

class RepositoriesListController: UITableViewController {
    
    // MARK: - Properties
    var viewModel = RepositoryListViewModel()
    var page = 1
    var activityIndicator = UIActivityIndicatorView(style: .gray)
    
    // MARK: - View Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupActivityIndicator()
        registerCell()
        requestRepoistories(for: page)
        setupRefreshController()
        viewModel.delegate = self
    }
    
    // MARK: - Internal Functions
    
    private func setupRefreshController() {
        refreshControl?.addTarget(self, action: #selector(refresh), for: .valueChanged)
    }
    
    private func registerCell() {
        tableView.register(UINib(nibName: "RepositoriesListCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    @objc private func refresh() {
        requestRepoistories(for: page)
        refreshControl?.endRefreshing()
    }
    
    private func requestRepoistories(for page: Int) {
        activityIndicator.startAnimating()
        viewModel.getRepositories(for: page)
    }
    
    private func setupActivityIndicator() {
        activityIndicator.frame = CGRect(x: 100, y: 100,
                                         width: view.bounds.width / 2,
                                         height: view.bounds.height / 2)
        activityIndicator.color = .black
        
        view.addSubview(activityIndicator)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RepositoriesListCell else { return UITableViewCell() }
        cell.repository = viewModel.itemViewModel(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == viewModel.numberOfItems - 3 {
            if !(viewModel.payload?.incompleteResults ?? false) {
                page += 1
                requestRepoistories(for: page)
            }
        }
    }
}

//Extension to conform RepositoryListViewModelAPI protocol
extension RepositoriesListController: RepositoryListViewModelAPI {
    func requestResult(error: Error?) {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.tableView.reloadData()
        }
        guard let error = error else { return }
        
        let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }
}
