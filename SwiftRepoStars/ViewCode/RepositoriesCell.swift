//
//  RepositoriesCell.swift
//  SwiftRepoStars
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit
import UIComponents

class RepositoriesCell: UICollectionViewCell {
    
    let repositoryNameLabel = LabelComponent(text: "Repository Name",
                                             fontSize: 16,
                                             true)
    
    let authorNameLabel = LabelComponent(text: "Author Name",
                                         fontSize: 14,
                                         false,
                                         .lightGray)
    
    let numberOfStars = LabelComponent(text: "☆ Number of Stars",
                                       fontSize: 14)
    
    let profileImageView = ImageComponent(image: #imageLiteral(resourceName: "placeholder"),
                                          contentMode: .scaleAspectFit)
    
    let descriptionTextView = TextViewComponent(text: "Repository Description",
                                                fontSize: 15)
    
    let separateLine = UIViewComponent(color: .lightGray,
                                       false)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        clipsToBounds = true
        
        addSubview(profileImageView)
        addSubview(repositoryNameLabel)
        addSubview(authorNameLabel)
        addSubview(descriptionTextView)
        addSubview(numberOfStars)
        addSubview(separateLine)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        repositoryNameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: numberOfStars.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 20)
        
        authorNameLabel.anchor(repositoryNameLabel.bottomAnchor, left: repositoryNameLabel.leftAnchor, bottom: nil, right: repositoryNameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        descriptionTextView.anchor(authorNameLabel.bottomAnchor, left: authorNameLabel.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 8, leftConstant: -4, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 0)
        
        numberOfStars.anchor(topAnchor, left: nil, bottom: descriptionTextView.topAnchor, right: rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 8, rightConstant: 8, widthConstant: 128, heightConstant: 0)
        
        separateLine.anchor(nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
}
