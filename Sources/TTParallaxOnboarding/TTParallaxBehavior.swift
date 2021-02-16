//
//  File.swift
//  
//
//  Created by Efraim Budusan on 2/16/21.
//

import Foundation
import UIKit

public class TTParallaxBehavior {
    
    private weak var scrollView:UIScrollView!
    
    private var depthMap:[UIView: CGFloat] = [:]
    
    public init(scrollView:UIScrollView) {
        self.scrollView = scrollView
    }
    
    public func add(view:UIView, withDepth depth:CGFloat) {
        depthMap[view] = depth
    }
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for (view, depth) in depthMap {
            applyTransaltion(to: view, scrollView: scrollView, depth: depth)
        }
    }
    
    func applyTransaltion(to view:UIView, scrollView:UIScrollView, depth:CGFloat) {
        var distanceModifier: CGFloat = 0.0
        if let superView = view.superview {
            let frame = scrollView.convert(view.identityTransformRect, from: superView)
            distanceModifier = max(0,frame.origin.x - self.scrollView.frame.width)
        }
        view.transform.tx = max(0, scrollView.contentOffset.x - distanceModifier) * depth
    }
    
}

extension UIView {
    
    var identityTransformRect: CGRect {
        return CGRect.init(x: self.center.x - self.bounds.size.width / 2,
                           y: self.center.y - self.bounds.size.height / 2,
                           width: self.bounds.width,
                           height: self.bounds.height)
    }
    
}
