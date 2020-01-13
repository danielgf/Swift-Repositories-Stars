//
//  RepositoriesListCell.swift
//  SwiftRepoStars
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit
import Networking
import SDWebImage

class RepositoriesListCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var bodyView: UIView!
    
    // MARK: - Properties
    var repository: RepositoryViewModel? { didSet { updateComponents() } }

    // MARK: - View Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setupBodyView()
    }

    // MARK: - Internal Functions
    private func setupBodyView() {
        bodyView.layer.cornerRadius = 10
    }
    
    private func updateComponents() {
        thumbImageView.sd_setImage(with: URL(string: repository?.owner.thumbURLImage ?? ""),
                                   placeholderImage: #imageLiteral(resourceName: "placeholder"), options: .refreshCached, context: nil)
        authorNameLabel.text = "Author: \(repository?.owner.name ?? "")"
        starLabel.text = "★: \(repository?.starCount ?? 0)"
        nameLabel.text = "Repository: \(repository?.repositoryName ?? "")"
        descriptionTextView.text = repository?.description
        descriptionTextView.layer.cornerRadius = 10
        
    }
}
