//
//  ViewController.swift
//  My1st3dApp
//
//  Created by Tristan Earl Ray, Jr on 4/25/24.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    
    @IBOutlet weak var my3DView: SCNView!
    
    var scnScene: SCNScene!
    var cameraNode: SCNNode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setup view
        my3DView.allowsCameraControl = true
        my3DView.autoenablesDefaultLighting = true
        // setup scene
        scnScene = SCNScene()
        scnScene.background.contents = "Background_Diffuse.png"
        my3DView.scene = scnScene
        //set camera
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 2)
        scnScene?.rootNode.addChildNode(cameraNode)
        
        //add 3d object in the scene
        var geometry: SCNGeometry = SCNGeometry()
        geometry = SCNSphere(radius: 0.4)
        //geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.05)
        
        
        geometry.firstMaterial!.diffuse.contents = "world2700x1350.jpg"
        let mySCNNode = SCNNode(geometry: geometry)
        mySCNNode.position = SCNVector3(0, 0, 0)
        
        scnScene?.rootNode.addChildNode(mySCNNode)
        
    }


}

