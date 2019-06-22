//
//  GameViewController.swift
//  Flappy Felipe
//
//  Created by Rudrank Riyam on 22/06/19.
//  Copyright © 2019 Rudrank. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let skView = self.view as? SKView {
            if skView.scene == nil {
                let aspectRatio = (skView.bounds.size.height / skView.bounds.size.width)
                let scene = GameScene(size: CGSize(width: 320, height: 320 * aspectRatio))
                
                skView.showsFPS = false
                skView.showsNodeCount = false
                skView.showsPhysics = false
                skView.ignoresSiblingOrder = true
                
                scene.scaleMode = .aspectFit
                
                skView.presentScene(scene)
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .portraitUpsideDown]
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
