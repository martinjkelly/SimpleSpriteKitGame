//
//  GameScene.swift
//  SpriteKitSimpleGame
//
//  Created by Martin Kelly on 18/08/2016.
//  Copyright (c) 2016 Martin Kelly. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let player = SKSpriteNode(imageNamed: "player")
    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = UIColor.whiteColor()
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        
        addChild(player)
    }
}
