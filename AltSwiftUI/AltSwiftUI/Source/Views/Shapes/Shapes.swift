//
//  Shapes.swift
//  AltSwiftUI
//
//  Created by Nodehi, Jabbar on 2020/09/10.
//  Copyright © 2020 Rakuten Travel. All rights reserved.
//

import UIKit

public enum RoundedCornerStyle {
    /// Quarter-circle rounded rect corners.
    case circular

    /// Continuous curvature rounded rect corners.
    case continuous
    
}

extension RoundedCornerStyle : Equatable {
}

extension RoundedCornerStyle : Hashable {
}

public protocol shape {
    var fillColor: Color {get set}
    var strokeBorderColor: Color {get set}
    var lineWidth: CGFloat {get set}
}

extension shape {
    
    /// Sets the fill color of a rectangle. Setting this value
    /// is equavelent to setting the `background` property with
    /// a color.
    public func fill(_ color: Color) -> Self {
        var view = self
        view.fillColor = color
        return view
    }
    
    public func strokeBorder(_ color: Color, lineWidth: CGFloat = 1) -> Self {
        var view = self
        view.strokeBorderColor = color
        view.lineWidth = lineWidth
        return view
    }
}


