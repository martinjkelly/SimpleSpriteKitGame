//
//  GameOverScene.swift
//  SpriteKitSimpleGame
//
//  Created by Martin Kelly on 21/08/2016.
//  Copyright © 2016 Martin Kelly. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    
    init(size: CGSize, won:Bool) {
        super.init(size: size)
        
        backgroundColor = SKColor.whiteColor()
        
        let message = won ? "You Won!" : "You lose :["
        
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.blackColor()
        label.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(label)
        
        runAction(SKAction.sequence([
            SKAction.waitForDuration(3.0),
            SKAction.runBlock() {
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = GameScene(size: size)
                self.view?.presentScene(scene, transition: reveal)
            }
        ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
