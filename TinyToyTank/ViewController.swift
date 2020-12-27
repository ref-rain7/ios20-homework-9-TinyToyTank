//
//  ViewController.swift
//  TinyToyTank
//
//  Created by zero on 2020/12/27.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var tankAnchor: TinyToyTank._TinyToyTank!
    var isActionPlaying: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Tank" scene from the "Experience" Reality File
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor.cannon?.setParent(tankAnchor.tank, preservingWorldTransform: true)
        tankAnchor?.actions.actionComplete.onAction = { _ in
            self.isActionPlaying = false
        }
        
        // Add the tank anchor to the scene
        arView.scene.anchors.append(tankAnchor)
    }
    
    @IBAction func cannonFirePressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor.notifications.cannonFire.post()
    }
    
    @IBAction func turretLeftPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor.notifications.turretLeft.post()
    }
    
    @IBAction func TurretRightPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor.notifications.turretRight.post()
    }
    
    @IBAction func tankLeftPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor.notifications.tankLeft.post()
    }
    
    @IBAction func tankForwardPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor.notifications.tankForward.post()
    }
    
    @IBAction func tankRightPressed(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor.notifications.tankRight.post()
    }
}
