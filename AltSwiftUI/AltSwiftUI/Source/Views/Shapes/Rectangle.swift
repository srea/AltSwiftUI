//
//  Rectangle.swift
//  AltSwiftUI
//
//  Created by Wong, Kevin a on 2020/08/06.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Rectangle shape.
public struct Rectangle: View, Renderable, shape {
    public var viewStore: ViewValues = ViewValues()
    
    public var fillColor = Color.clear
    public var strokeBorderColor = Color.clear
    public var lineWidth: CGFloat = 1
    
    public var body: View {
        EmptyView()
    }
    
    public init() {}
    
    public func createView(context: Context) -> UIView {
        let rectangle = UIView().noAutoresizingMask()
        rectangle.layer.backgroundColor = fillColor.color.cgColor
        rectangle.layer.borderColor = strokeBorderColor.color.cgColor
        rectangle.layer.borderWidth = lineWidth
        return rectangle
    }
    
    public func updateView(_ view: UIView, context: Context) {
    }

}
