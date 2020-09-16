//
//  Ellipse.swift
//  AltSwiftUI
//
//  Created by Nodehi, Jabbar on 2020/09/09.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Ellipse shape.
public struct Ellipse: View, Renderable, shape {
    public var viewStore: ViewValues = ViewValues()
    
    public var fillColor = Color.clear
    public var strokeBorderColor = Color.clear
    public var lineWidth: CGFloat = 1
    
    public var body: View {
        EmptyView()
    }
    
    public init() {}
    
    public func createView(context: Context) -> UIView {
        let width = context.viewValues?.viewDimensions?.width ?? .infinity
        let height = context.viewValues?.viewDimensions?.height ?? .infinity
        
        let view = UIView().noAutoresizingMask()
        let shapeLayer = CAShapeLayer()

        shapeLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: width, height: height)).cgPath
        shapeLayer.strokeColor = strokeBorderColor.color.cgColor
        shapeLayer.fillColor = fillColor.color.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineCap = .square
        view.layer.addSublayer(shapeLayer)

        return view
    }
    
    public func updateView(_ view: UIView, context: Context) {
    }
}
