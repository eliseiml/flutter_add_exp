//
//  ViewController.swift
//  iosWithFlutter
//
//  Created by Yelisei Melnichuk on 28/02/2025.
//

import UIKit
import Flutter

class ViewController: UIViewController {
    @IBAction func onGoToFlutterAPressed(_ sender: UIButton) {
        let engine = (UIApplication.shared.delegate as! AppDelegate).flutterEngineA!
        engine.viewController = nil
        let vc = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        present(vc, animated: false, completion: nil)
    }
    
    @IBAction func onGoToFlutterBPressed(_ sender: UIButton) {
        let engine = (UIApplication.shared.delegate as! AppDelegate).flutterEngineB!
        engine.viewController = nil
        let vc = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        present(vc, animated: false, completion: nil)
    }
}

