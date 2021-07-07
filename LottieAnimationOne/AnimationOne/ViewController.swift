//
//  ViewController.swift
//  LottieAnimationOne
//
//  Created by Gabriel on 07/07/21.
//

import UIKit
import Lottie

class LaunchViewController: UIViewController {

    lazy var backgroundAnimationView: AnimationView = {
        let animationView = AnimationView()
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        animationView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        animationView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return animationView
    }()

    lazy var successAnimationView: AnimationView = {
        let animationView = AnimationView()
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return animationView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playBackgroundAnimation()
        playSuccessAnimation()
    }

    private func playBackgroundAnimation() {
        let animation = Animation.named("confetti-on-transparent-background")
        backgroundAnimationView.animation = animation
        backgroundAnimationView.play(fromProgress: 0, toProgress: 1, loopMode: .loop) { finished in
            if finished {
                print("Animation ended")
            } else {
                print("Animation cancelled")
            }
        }
    }

    private func playSuccessAnimation() {
        let animation = Animation.named("check-okey-done")
        successAnimationView.animation = animation
        successAnimationView.play(fromProgress: 0, toProgress: 1, loopMode: .loop) { finished in
            if finished {
                print("Animation ended")
            } else {
                print("Animation cancelled")
            }
        }
    }
}



