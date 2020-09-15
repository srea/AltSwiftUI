//
//  RoundedRectangle.swift
//  ios13test
//
//  Created by Nodehi, Jabbar on 2020/09/09.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a RoundedRectangle shape.
public struct RoundedRectangle: View, Renderable {
    public var viewStore: ViewValues = ViewValues()
    
    @State var fillColor = Color.clear
    @State var strokeBorderColor = Color.clear
    @State var lineWidth: CGFloat = 1
    
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
        let view = UIView()
        let roundedRectangle = UIView().noAutoresizingMask()
        
        roundedRectangle.layer.cornerRadius = cornerRadius
        roundedRectangle.layer.backgroundColor = fillColor.color.cgColor
        roundedRectangle.layer.borderColor = strokeBorderColor.color.cgColor
        roundedRectangle.layer.borderWidth = lineWidth
        
        view.addSubview(roundedRectangle)
        return view
    }
    
    public func updateView(_ view: UIView, context: Context) {
    }
    
    /// Sets the fill color of a Rounded Rectangle. Setting this value
    /// is equavelent to setting the `background` property with
    /// a color.
    public func fill(_ color: Color) -> Self {
        fillColor = color
        return self
    }
    
    /// Sets the stroke color and stroke width of a Rounded Rectangle.
    public func strokeBorder(_ color: Color, lineWidth: CGFloat = 1) -> Self {
        strokeBorderColor = color
        self.lineWidth = lineWidth
        return self
    }
}
