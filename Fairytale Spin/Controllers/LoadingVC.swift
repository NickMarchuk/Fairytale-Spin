//
//  ViewController.swift
//  Fairytale Spin
//
//  Created by Nick M on 18.06.2022.
//

import UIKit

class LoadingVC: UIViewController {
    
    // MARK: - IBOUTLET PROPERTIES
    @IBOutlet weak var loadingProgress: UIProgressView!
    
    // MARK: - VC LIFE CYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        if !UserDefaults.standard.bool(forKey: K.firstLaunch){
            UserDefaults.standard.set(5000, forKey: K.totalPoints)
            UserDefaults.standard.set(1, forKey: K.betCondition)
            UserDefaults.standard.set(true, forKey: K.firstLaunch)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingProgress.downloadAnimation(interval: 0.01) {
            self.performSegue(withIdentifier: K.toMainScreen, sender: self)
        }
    }
}

