//
//  TextViewComponent.swift
//  UIComponents
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class TextViewComponent: UITextView {
    
    public init(text: String, fontSize: CGFloat, _ fontBold: Bool = false) {
        super.init(frame: .zero, textContainer: nil)
        
        self.text = text
        font = fontBold ? UIFont.boldSystemFont(ofSize: fontSize) : UIFont.systemFont(ofSize: fontSize)
        backgroundColor = .clear
        isEditable = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
