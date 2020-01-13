//
//  ImageComponent.swift
//  UIComponents
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class ImageComponent: UIImageView {
    
    public init(image: UIImage, contentMode: ContentMode) {
        super.init(frame: .zero)
        
        self.image = image
        self.contentMode = contentMode
        layer.cornerRadius = 5
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
