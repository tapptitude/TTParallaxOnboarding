//
//  OnboardingView.swift
//  TTParallaxOnboardingExample
//
//  Created by Efraim Budusan on 7/30/20.
//  Copyright © 2020 Tapptitude. All rights reserved.
//

import UIKit
import TTParallaxOnboarding

class OnboardingView: UIView {
    
    var xibName:String {
        return "OnboardingView"
    }

    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet var clouds: [UIImageView]!
    @IBOutlet weak var zeplin: UIImageView!
    @IBOutlet weak var box: UIImageView!
    @IBOutlet weak var truckBoxes: UIImageView!
    @IBOutlet weak var truck: UIImageView!
    @IBOutlet var hills: [UIImageView]!
    @IBOutlet weak var mountain: UIImageView!
    @IBOutlet weak var contentView:UIView!
    
    func loadFromNib() {
        let bundle = Bundle(for: Self.self)
        bundle.loadNibNamed(self.xibName, owner: self, options: nil)
        self.frame.size = contentView.frame.size
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.constrainAllMargins(with: self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadFromNib()
    }
    
//    func configure(for onboarding: TTParallaxOnboarding) {
//        onboarding.add(view: rocket, withDepth: 0.7)
//        clouds.forEach({ onboarding.add(view: $0, withDepth: 0.4)})
//        onboarding.add(view: zeplin, withDepth: 0.9)
//        onboarding.add(view: box, withDepth: 0.4)
//        onboarding.add(view: truck, withDepth: 0.3)
//        hills.forEach{( onboarding.add(view: $0, withDepth: 0.9))}
//        onboarding.add(view: mountain, withDepth: 0.6)
//    }
}


private protocol OwnerInitializableView  {
    var xibName:String { get }
    var contentView:UIView! { get set }
    func loadFromNib()
}

private extension OwnerInitializableView  where Self:UIView {
    
    func loadFromNib() {
        let bundle = Bundle(for: Self.self)
        bundle.loadNibNamed(self.xibName, owner: self, options: nil)
        self.frame.size = contentView.frame.size
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.constrainAllMargins(with: self)
    }
}

private extension UIView {
    
    func constrainAllMargins(with other:UIView) {
        self.topAnchor.constraint(equalTo: other.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: other.bottomAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: other.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: other.trailingAnchor).isActive = true
    }
}

