//
//  GameScene.swift
//  Flappy Felipe
//
//  Created by Rudrank Riyam on 22/06/19.
//  Copyright © 2019 Rudrank. All rights reserved.
//

import SpriteKit
import GameplayKit

enum Layer: CGFloat {
    case background
    case foreground
}
class GameScene: SKScene {
    
    let worldNode = SKNode()
    var playableStart: CGFloat = 0
    var playableHeight: CGFloat = 0
    override func didMove(to view: SKView) {
        addChild(worldNode)
        setupBackground()
        setupForeground()
    }
    
    func setupBackground() {
        let background = SKSpriteNode(imageNamed: "background")
        background.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        background.position = CGPoint(x: size.width / 2, y: size.height)
        background.zPosition = Layer.background.rawValue
        
        playableStart = size.height - background.size.height
        playableHeight = background.size.height
        
        worldNode.addChild(background)
    }
    
    func setupForeground() {
        let foreground = SKSpriteNode(imageNamed: "Ground")
        foreground.anchorPoint = CGPoint(x: 0.0, y: 1.0)
        foreground.position = CGPoint(x: 0, y: playableStart)
        foreground.zPosition = Layer.foreground.rawValue
        
        worldNode.addChild(foreground)
    }
    
}
