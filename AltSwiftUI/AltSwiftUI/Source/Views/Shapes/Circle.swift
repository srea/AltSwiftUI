//
//  Circle.swift
//  ios13test
//
//  Created by Nodehi, Jabbar on 2020/09/08.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Circle shape.
public struct Circle: View, Renderable {
    public var viewStore: ViewValues = ViewValues()
    
    @State var fillColor = Color.clear
    @State var strokeBorderColor = Color.clear
    @State var lineWidth: CGFloat = 1
    
    public var body: View {
        EmptyView()
    }
    
    public init() {}
    
    public func createView(context: Context) -> UIView {
        let width = context.viewValues?.viewDimensions?.width ?? .infinity
        let height = context.viewValues?.viewDimensions?.height ?? .infinity
        
        let view = UIView()
        let circle = UIView()
        
        let minDimensions = min(width, height)
        let x = (width - minDimensions) / 2
        let y = (height - minDimensions) / 2
        circle.frame = CGRect(x: x, y: y, width: minDimensions, height: minDimensions)
        circle.layer.cornerRadius = minDimensions / 2
        circle.backgroundColor = fillColor.color
        circle.layer.borderColor = strokeBorderColor.color.cgColor
        circle.layer.borderWidth = lineWidth
        
        view.addSubview(circle)
        return view
    }
    
    public func updateView(_ view: UIView, context: Context) {
    }
    
    /// Sets the fill color of a Circle. Setting this value
    /// is equavelent to setting the `background` property with
    /// a color.
    public func fill(_ color: Color) -> Self {
        fillColor = color
        return self
    }
    
    /// Sets the stroke color and stroke width of a Circle.
    public func strokeBorder(_ color: Color, lineWidth: CGFloat = 1) -> Self {
        strokeBorderColor = color
        self.lineWidth = lineWidth
        return self
    }
}
