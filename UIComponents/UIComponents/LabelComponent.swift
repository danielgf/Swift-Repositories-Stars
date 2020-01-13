//
//  LabelComponent.swift
//  UIComponents
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class LabelComponent: UILabel {
    
    public init(text: String, fontSize: CGFloat, _ fontBold: Bool = false, _ color: UIColor = .black) {
        super.init(frame: .zero)
        
        self.text = text
        font = fontBold ? UIFont.boldSystemFont(ofSize: fontSize) : UIFont.systemFont(ofSize: fontSize)
        textColor = color
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
