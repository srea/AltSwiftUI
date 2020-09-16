//
//  Circle.swift
//  AltSwiftUI
//
//  Created by Nodehi, Jabbar on 2020/09/08.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Circle shape.
public struct Circle: View, Renderable, shape {
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
}
