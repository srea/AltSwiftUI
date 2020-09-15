//
//  Capsule.swift
//  ios13test
//
//  Created by Nodehi, Jabbar on 2020/09/09.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Capsule shape.
public struct Capsule: View, Renderable {
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
        let capsule = UIView()
        
        let minDimensions = min(width, height)
        capsule.frame = CGRect(x: 0, y: 0, width: width, height: height)
        capsule.layer.cornerRadius = minDimensions / 2
        capsule.backgroundColor = fillColor.color
        capsule.layer.borderColor = strokeBorderColor.color.cgColor
        capsule.layer.borderWidth = lineWidth
        
        view.addSubview(capsule)
        return view
    }
    
    public func updateView(_ view: UIView, context: Context) {
    }
    
    /// Sets the fill color of a Capsule. Setting this value
    /// is equavelent to setting the `background` property with
    /// a color.
    public func fill(_ color: Color) -> Self {
        fillColor = color
        return self
    }
    
    /// Sets the stroke color and stroke width of a Capsule.
    public func strokeBorder(_ color: Color, lineWidth: CGFloat = 1) -> Self {
        strokeBorderColor = color
        self.lineWidth = lineWidth
        return self
    }
    
}
