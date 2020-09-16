//
//  Capsule.swift
//  AltSwiftUI
//
//  Created by Nodehi, Jabbar on 2020/09/09.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

/// A view that represents a Capsule shape.
public struct Capsule: View, Renderable, shape {
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
}
