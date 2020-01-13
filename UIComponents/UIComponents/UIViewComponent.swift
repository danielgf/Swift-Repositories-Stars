//
//  UIViewComponent.swift
//  UIComponents
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class UIViewComponent: UIView {
    
    public init(color: UIColor, _ hide: Bool = true) {
        super.init(frame: .zero)
        
        backgroundColor = color
        isHidden = hide
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
