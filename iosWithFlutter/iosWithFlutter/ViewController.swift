//
//  ViewController.swift
//  iosWithFlutter
//
//  Created by Yelisei Melnichuk on 28/02/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onGoToFlutterAPressed(_ sender: UIButton) {
        let vc = FlutterAViewController()
        present(vc, animated: false, completion: nil)
    }
    
    @IBAction func onGoToFlutterBPressed(_ sender: UIButton) {
        let vc = FlutterBViewController()
//        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    @IBOutlet weak var goToFlutterAButton: UIButton!
    
    @IBOutlet weak var goToFlutterBButton: UIButton!
}

