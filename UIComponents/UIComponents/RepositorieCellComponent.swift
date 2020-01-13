//
//  RepositorieCellComponent.swift
//  UIComponents
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class RepositorieCellComponent: UIView {
    
    public let repositoryNameLabel = LabelComponent(text: "Repository Name",
                                             fontSize: 16,
                                             true)
    
    public let authorNameLabel = LabelComponent(text: "Author Name",
                                         fontSize: 14,
                                         false,
                                         .lightGray)
    
    public let numberOfStars = LabelComponent(text: "☆ Number of Stars",
                                       fontSize: 14)
    
    public let profileImageView = ImageComponent(image: #imageLiteral(resourceName: "placeholder"),
                                          contentMode: .scaleAspectFit)
    
    public let descriptionTextView = TextViewComponent(text: "Repository Description",
                                                fontSize: 15)
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(profileImageView)
        addSubview(repositoryNameLabel)
        addSubview(authorNameLabel)
        addSubview(descriptionTextView)
        addSubview(numberOfStars)
        
        setupConstrants()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupConstrants() {
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        repositoryNameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: numberOfStars.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 20)
        
        authorNameLabel.anchor(repositoryNameLabel.bottomAnchor, left: repositoryNameLabel.leftAnchor, bottom: nil, right: repositoryNameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        descriptionTextView.anchor(authorNameLabel.bottomAnchor, left: authorNameLabel.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 8, leftConstant: -4, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 0)
        
        numberOfStars.anchor(topAnchor, left: nil, bottom: descriptionTextView.topAnchor, right: rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 8, rightConstant: 8, widthConstant: 128, heightConstant: 0)
    }
}
