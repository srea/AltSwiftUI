//
//  Rectangle.swift
//  RakuSwiftUI
//
//  Created by Wong, Kevin a on 2020/08/06.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Rectangle shape.
public struct Rectangle: View, Renderable {
    public var viewStore: ViewValues = ViewValues()
    
    @State var fillColor = Color.clear
    @State var strokeBorderColor = Color.clear
    @State var lineWidth: CGFloat = 1
    
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
    
    /// Sets the fill color of a rectangle. Setting this value
    /// is equavelent to setting the `background` property with
    /// a color.
    public func fill(_ color: Color) -> Self {
        fillColor = color
        return self
    }
    
    /// Sets the stroke color and stroke width of a rectangle.
    public func strokeBorder(_ color: Color, lineWidth: CGFloat = 1) -> Self {
        strokeBorderColor = color
        self.lineWidth = lineWidth
        return self
    }
}
