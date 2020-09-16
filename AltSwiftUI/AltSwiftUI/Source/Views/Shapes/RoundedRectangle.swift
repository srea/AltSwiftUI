//
//  RoundedRectangle.swift
//  AltSwiftUI
//
//  Created by Nodehi, Jabbar on 2020/09/09.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a RoundedRectangle shape.
public struct RoundedRectangle: View, Renderable, shape {
    public var viewStore: ViewValues = ViewValues()
    
    public var fillColor = Color.clear
    public var strokeBorderColor = Color.clear
    public var lineWidth: CGFloat = 1
    
    public var body: View {
        EmptyView()
    }
    
//    public var cornerSize: CGSize
    public var cornerRadius: CGFloat

    public var style: RoundedCornerStyle
    
    public init(cornerRadius: CGFloat, style: RoundedCornerStyle = .circular) {
        self.cornerRadius = cornerRadius
        self.style = style
    }
    
    
    
    public func createView(context: Context) -> UIView {
        let view = UIView().noAutoresizingMask()
        let roundedRectangle = UIView()
        
        roundedRectangle.layer.cornerRadius = cornerRadius
        roundedRectangle.layer.backgroundColor = fillColor.color.cgColor
        roundedRectangle.layer.borderColor = strokeBorderColor.color.cgColor
        roundedRectangle.layer.borderWidth = lineWidth
        
        view.addSubview(roundedRectangle)
        return view
    }
    
    public func updateView(_ view: UIView, context: Context) {
    }
}
