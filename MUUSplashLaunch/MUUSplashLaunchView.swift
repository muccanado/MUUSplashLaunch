//
//  MUUSplashLaunchView.swift
//  MUUSplashLaunch
//
//  Created by muccanado on 11/02/2019.
//  Copyright © 2019 muccanado. All rights reserved.
//

import UIKit

public class MUUSplashLaunchView: UIView {
    
    // MARK: Variables
    let splashImage = UIImageView(image: UIImage(named: "splashLogo")!)
    let splashView = UIView()
    
    
    // MARK: Set Up View
    public override init(frame: CGRect) {
        
        // For use in code
        super.init(frame: frame)
        setUpView()
        
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
        
    }
    
    
    private func setUpView() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            self.downScaleAnimation()
        }
        
        splashView.backgroundColor = UIColor(red: 0/255, green: 172/255, blue: 237/255, alpha: 1.0)
        addSubview(splashView)
        splashView.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
        splashImage.contentMode = .scaleAspectFit
        splashView.addSubview(splashImage)
        splashImage.frame = CGRect(x: splashView.frame.midX - 35, y: splashView.frame.midY - 35, width: 70, height: 70)
        
    }
    
    // MARK: Animations
    func downScaleAnimation() {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.splashImage.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }) { (success) in
            self.upScaleAnimation()
        }
        
    }
    
    func upScaleAnimation() {
        
        UIView.animate(withDuration: 0.35, delay: 0.1, options: .curveEaseIn, animations: {
            self.splashImage.transform = CGAffineTransform(scaleX: 5, y: 5)
        }) { (success) in
            self.removeSplashScreen()
        }
        
    }
    
    func removeSplashScreen() {
        splashView.removeFromSuperview()
    }
    
}

