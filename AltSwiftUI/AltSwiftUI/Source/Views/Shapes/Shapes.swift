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


