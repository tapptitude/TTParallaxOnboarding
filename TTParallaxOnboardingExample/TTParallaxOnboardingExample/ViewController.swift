//
//  ViewController.swift
//  TTParallaxOnboardingExample
//
//  Created by Efraim Budusan on 7/30/20.
//  Copyright © 2020 Tapptitude. All rights reserved.
//

import UIKit
import TTParallaxOnboarding

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var onboardingView: OnboardingView!
    
    var parralaxBehavior: TTParallaxOnboarding!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        parralaxBehavior = TTParallaxOnboarding(scrollView: self.scrollView)
//        onboardingView.configure(for: parralaxBehavior)
        
        
    }
}

