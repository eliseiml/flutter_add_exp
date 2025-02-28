//
//  FlutterAViewController.swift
//  iosWithFlutter
//
//  Created by Yelisei Melnichuk on 28/02/2025.
//

import UIKit
import Flutter

class FlutterAViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let engine = (UIApplication.shared.delegate as! AppDelegate).flutterEngineA!
        engine.viewController = nil
        let vc = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        
        self.addChild(vc)
        
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        
        guard let flutterView = vc.view else { return }
        
        flutterView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(flutterView)
        
        let constraints = [
            flutterView.topAnchor.constraint(equalTo: view.topAnchor),
            flutterView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flutterView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flutterView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        vc.didMove(toParent: self)
        flutterView.layoutIfNeeded()
    }
}
