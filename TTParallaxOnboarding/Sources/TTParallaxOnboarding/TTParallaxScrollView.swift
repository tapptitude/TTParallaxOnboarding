//
//  File.swift
//  
//
//  Created by Efraim Budusan on 2/16/21.
//

import UIKit

public class TTParallaxScrollView: UIScrollView {
    
    @IBOutlet public weak var contentView: UIView!
    
    @IBInspectable var pageCount: Int = 1
    
    public lazy var parallaxBehavior: TTParallaxBehavior = TTParallaxBehavior(scrollView: self)
    
    public init(contentView: UIView, pageCount: Int) {
        super.init(frame: CGRect.zero)
        self.delegate = self
        self.set(contentView: contentView, pageCount: pageCount)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.delegate = self
        
    }
    
    public func set(contentView: UIView, pageCount: Int) {
        self.contentView = contentView
        self.pageCount = pageCount
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contentView)
        self.setupContentViewConstraints()
    }
    
    func setupContentViewConstraints() {
        NSLayoutConstraint.activate([
            self.contentView.leadingAnchor.constraint(equalTo: self.contentLayoutGuide.leadingAnchor),
            self.contentView.trailingAnchor.constraint(equalTo: self.contentLayoutGuide.trailingAnchor),
            self.contentView.bottomAnchor.constraint(equalTo: self.contentLayoutGuide.bottomAnchor),
            self.contentView.topAnchor.constraint(equalTo: self.contentLayoutGuide.topAnchor),
            self.contentView.widthAnchor.constraint(equalTo: self.frameLayoutGuide.widthAnchor, multiplier: CGFloat(self.pageCount)),
            self.contentView.heightAnchor.constraint(equalTo: self.frameLayoutGuide.heightAnchor)
            ])
    }
    
    public func addParallax(to view: UIView, depth: CGFloat) {
        self.parallaxBehavior.add(view: view, withDepth: depth)
    }
}

extension TTParallaxScrollView: UIScrollViewDelegate {
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.parallaxBehavior.scrollViewDidScroll(scrollView)
    }
    
}
