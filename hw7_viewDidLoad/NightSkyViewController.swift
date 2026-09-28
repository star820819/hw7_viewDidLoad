//
//  NightSkyViewController.swift
//  hw7_viewDidLoad
//
//  Created by CHIEH-TING HSU on 2026/9/2.
//

import UIKit

class NightSkyViewController: UIViewController {

    @IBOutlet weak var nightSkyImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nightSkyImageView.image = UIImage(resource: .sky)
        
        // 製作星星的粒子
        let starEmitterCell = CAEmitterCell()
        starEmitterCell.contents = UIImage(named: "star")?.cgImage
        starEmitterCell.birthRate = 1
        starEmitterCell.lifetime = 5
        starEmitterCell.scale = 0.1
        starEmitterCell.scaleRange = 0.1    // 讓星星有大有小
        starEmitterCell.velocity = 100
        starEmitterCell.yAcceleration = 100 // 讓星星向下移動
        starEmitterCell.xAcceleration = -10 // 讓星星向左移動
        
        let starEmitterLayer = CAEmitterLayer()
        starEmitterLayer.emitterCells = [starEmitterCell]
        
        starEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)  // 設定粒子從哪出現
        starEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)  // 設定發射區域多大
        starEmitterLayer.emitterShape = .line   //設定發射區域的形狀
        view.layer.addSublayer(starEmitterLayer)
        
        let woodstockImageView = UIImageView(frame: CGRect(x: 100, y: 400, width: 199, height: 174))
        view.addSubview(woodstockImageView)
        let animatedImage = UIImage.animatedImageNamed("woodstock-", duration: 1)
        woodstockImageView.image = animatedImage
    }
}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateInitialViewController()!
}
