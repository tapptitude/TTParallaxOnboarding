
import UIKit

public class TTParallaxOnboardingBehavior {
    
    private weak var scrollView:UIScrollView!
    
    private var depthMap:[UIView: CGFloat] = [:]

    public init(scrollView:UIScrollView) {
        self.scrollView = scrollView
    }
    
    public func add(view:UIView, withDepth depth:CGFloat) {
        depthMap[view] = depth
    }
    
    public func update() {
        
    }
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        for (view, depth) in depthMap {
            applyTransaltion(to: view, scrollView: scrollView, depth: depth)
        }
        
//        applyTransaltion(to: glyph1, scrollView: scrollView, targetDistance: -200.0, relativeToPage: 0)
//        applyTransaltion(to: glyph2, scrollView: scrollView, targetDistance: -200.0, relativeToPage: 1)
//        applyTransaltion(to: glyph3, scrollView: scrollView, targetDistance: -300.0, relativeToPage: 2)
//        applyTransaltion(to: glyph4, scrollView: scrollView, targetDistance: -200.0, relativeToPage: 2)
//        applyTransaltion(to: glyph5, scrollView: scrollView, targetDistance: -300.0, relativeToPage: 2)
//        applyTransaltion(to: glyph6, scrollView: scrollView, targetDistance: -200.0, relativeToPage: 3)
    }
    
    func applyTransaltion(to view:UIView, scrollView:UIScrollView, depth:CGFloat) {
        view.transform.tx = scrollView.contentOffset.x
    }
    
    func applyTransaltion(to view:UIView, scrollView:UIScrollView, targetDistance:CGFloat, relativeToPage page:Int) {
        let realtiveGlobalProgress = globalProgress(in: scrollView, relativeToPage: page)
        let capped = max(-1.0,min(1.0,realtiveGlobalProgress))
        view.transform.tx = targetDistance * capped
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
    
    
    func globalProgress(in scrollView:UIScrollView,relativeToPage page:Int) -> CGFloat {
        let _globalProgress = globalProgress(in:scrollView)
        return _globalProgress - CGFloat(page)
    }
    
    func globalProgress(in scrollView:UIScrollView) -> CGFloat {
        return scrollView.contentOffset.x / scrollView.frame.width
    }
    
    func localProgress(in scrollView:UIScrollView) -> CGFloat {
        let width = scrollView.frame.width
        let contenOffset = scrollView.contentOffset.x
        let value = contenOffset.truncatingRemainder(dividingBy: width) / width
        return min(1,max(0,value))
    }

}
