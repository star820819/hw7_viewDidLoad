//
//  DancingViewController.swift
//  hw7_viewDidLoad
//
//  Created by CHIEH-TING HSU on 2026/9/20.
//

import UIKit
import CoreImage.CIFilterBuiltins

class DancingViewController: UIViewController {

    @IBOutlet weak var dancingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dancingImageView.image = UIImage(resource: .sky)
        
        let snoopyDancingImageView = UIImageView(frame: CGRect(x: 30, y: -42, width: 350, height: 350))
        view.addSubview(snoopyDancingImageView)
        let snoopyAnimatedImage = UIImage.animatedImageNamed("love-woodstock-", duration: 12)
        snoopyDancingImageView.image = snoopyAnimatedImage
        
        let maskImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 350, height: 350))
        maskImageView.image = UIImage(systemName: "circle.fill")
        maskImageView.contentMode = .scaleAspectFit
        snoopyDancingImageView.mask = maskImageView
    }
}
