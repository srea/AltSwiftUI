//
//  Ellipse.swift
//  ios13test
//
//  Created by Nodehi, Jabbar on 2020/09/09.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Ellipse shape.
public struct Ellipse: View, Renderable {
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
        let shapeLayer = CAShapeLayer()

        shapeLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: width, height: height)).cgPath
        shapeLayer.strokeColor = strokeBorderColor.color.cgColor
        shapeLayer.fillColor = fillColor.color.cgColor
        shapeLayer.lineWidth = lineWidth
        view.layer.addSublayer(shapeLayer)

        return view
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
    
    /// Sets the stroke color and stroke width of an Ellipse.
    public func strokeBorder(_ color: Color, lineWidth: CGFloat = 1) -> Self {
        strokeBorderColor = color
        self.lineWidth = lineWidth
        return self
    }
}
