//
//  RepositoryListViewModel.swift
//  Networking
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright (c) 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public protocol RepositoryListViewModelAPI {
    func requestResult(error: Error?)
}

public class RepositoryListViewModel {
    
    // MARK: - Variables
    static let shared = RepositoryListViewModel()
    fileprivate var itemsViewModels = [IndexPath: RepositoryViewModel]()
    public var numberOfItems: Int { get { return itemsViewModels.count } }
    public var delegate: RepositoryListViewModelAPI?
    public var payload: PayloadViewModel?
    
    // MARK: - Init
    
    public init() {}
    
    convenience init(_ object: [Repository], _ section: Int = 0) {
        self.init()
        createList(object, section)
    }
    
    // MARK: - Crete List
    fileprivate func createList(_ items: [Repository], _ section: Int = 0) {
        let itemsCount = itemsViewModels.count
        for (i, item) in items.enumerated() {
            let indexPath = IndexPath(row: i+itemsCount, section: section)
            itemsViewModels[indexPath] = RepositoryViewModel(item)
        }
    }
    
    // MARK: - View Model
    public func itemViewModel(indexPath: IndexPath) -> RepositoryViewModel? {
        if itemsViewModels.keys.contains(indexPath) {
            return itemsViewModels[indexPath]
        }
        return nil
    }
    
    // MARK: - Internal Functions
    
    public func getRepositories(for page: Int) {
        NetworkingManager.shared.requestRepositories(for: page) { (result) in
            switch result {
                case .success(let payload):
                    self.createList(payload.repository)
                    self.payload = PayloadViewModel(payload)
                    self.delegate?.requestResult(error: nil)
                case .failure(let error):
                    self.delegate?.requestResult(error: error)
            }
        }
    }
    
}
