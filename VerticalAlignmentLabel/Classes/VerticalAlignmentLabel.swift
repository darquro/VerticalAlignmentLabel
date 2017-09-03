//
//  VerticalAlignmentLabel.swift
//  VerticalAlignmentLabel
//
//  Created by yuki.kuroda on 2017/09/03.
//  Copyright © 2017年 yuki.kuroda. All rights reserved.
//

import UIKit

@IBDesignable
public class VerticalAlignmentLabel: UILabel {

    @IBInspectable var top: Bool = false {
        didSet {
            self.verticalTextAlignment = top ? .top : .center
        }
    }

    @IBInspectable var bottom: Bool = false {
        didSet {
            self.verticalTextAlignment = bottom ? .bottom : .center
        }
    }
    
    public var verticalTextAlignment: VerticalTextAlignment = .center {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    public override func drawText(in rect: CGRect) {
        let actualRect = self.textRect(forBounds: rect, limitedToNumberOfLines: self.numberOfLines)
        super.drawText(in: actualRect)
    }
    
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var textRect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        switch self.verticalTextAlignment {
        case .top:
            textRect.origin.y = bounds.origin.y
        case .bottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) * 0.5
            break
        }
        return textRect
    }

    public enum VerticalTextAlignment {
        case top
        case center
        case bottom
    }
}
