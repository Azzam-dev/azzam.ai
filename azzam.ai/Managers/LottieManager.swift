//
//  LottieManager.swift
//  azzam.ai
//
//  Created by الشيخ عزام on 29/12/1445 AH.
//

import UIKit
import Lottie

enum AnimationType: String {
    case confetti
    case party
}

class LottieManager {
    static let shared = LottieManager()
    
    func animation(type: AnimationType, contentMode: UIView.ContentMode = .scaleAspectFit ,loopMode: LottieLoopMode = .playOnce, speed: CGFloat = 1) -> LottieAnimationView {
        var animationView: LottieAnimationView = .init(name: type.rawValue)
        animationView.isUserInteractionEnabled = false
        animationView.contentMode = contentMode
        animationView.loopMode = loopMode
        animationView.animationSpeed = speed
        return animationView
    }
    
    
    func animation(on view: UIView, type: AnimationType, contentMode: UIView.ContentMode = .scaleAspectFit ,loopMode: LottieLoopMode = .playOnce, speed: CGFloat = 1) {
        var animationView: LottieAnimationView = .init(name: type.rawValue)
        animationView.isUserInteractionEnabled = false
        animationView.contentMode = contentMode
        animationView.loopMode = loopMode
        animationView.animationSpeed = speed
        view.addSubview(animationView)
        animationView.frame = view.bounds
        animationView.play { _ in
            animationView.removeFromSuperview()
        }
    }
    
}
