//
//  ViewController.swift
//  TTParallaxOnboardingExample
//
//  Created by Efraim Budusan on 7/30/20.
//  Copyright © 2020 Tapptitude. All rights reserved.
//

import UIKit
import TTParallaxOnboarding

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: TTParallaxScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.contentInsetAdjustmentBehavior = .never
        self.setupOnboardingView()
        self.scrollView.isPagingEnabled = true
        self.scrollView.backgroundColor = UIColor.clear
        self.view.layoutSubviews()
    }
    
    func setupOnboardingView() {
        let onboardingView = OnboardingView()
        self.scrollView.set(contentView: onboardingView, pageCount: 3)
        self.scrollView.addParallax(to: onboardingView.zeplin, depth: 0.9)
        self.scrollView.addParallax(to: onboardingView.rocket, depth: 0.4)
        onboardingView.clouds.forEach { (imageView) in
            let random = 0.2 + CGFloat(Int.random(in: 0..<10)) / 100
            self.scrollView.addParallax(to: imageView, depth: random)
        }
        self.scrollView.addParallax(to: onboardingView.box, depth: 0.1)
        self.scrollView.addParallax(to: onboardingView.truck, depth: 0.2)
        self.scrollView.addParallax(to: onboardingView.hills.first!, depth: 0.55)
        self.scrollView.addParallax(to: onboardingView.hills[1], depth: 0.65)
        self.scrollView.addParallax(to: onboardingView.mountain, depth: 0.7)
    }
    
    @IBAction func nextAction(_ sender: Any) {
        let pageCount = self.scrollView.contentSize.width / self.scrollView.frame.width
        var contentOffset = self.scrollView.contentOffset
        let newOffsetX = min(self.scrollView.frame.width + contentOffset.x, (pageCount - 1) * self.scrollView.frame.width)
        contentOffset.x = newOffsetX
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseInOut) {
            self.scrollView.setContentOffset(contentOffset, animated: false)
        } completion: { finished in
            return
        }

    }
}

