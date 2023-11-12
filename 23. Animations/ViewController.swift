//
//  ViewController.swift
//  23. Animations
//
//  Created by Sesili Tsikaridze on 13.11.23.
//

import UIKit

final class ViewController: UIViewController {
    
    private let tbcLabel = {
        let label = UILabel()
        label.text = "TBC IT Academy"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        labelSetup()
        labelAnimation()
    }

    private func labelSetup() {
        view.addSubview(tbcLabel)
        NSLayoutConstraint.activate([
            tbcLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tbcLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func labelAnimation() {
            UIView.animate(withDuration: 2.0, animations: {
                self.tbcLabel.alpha = 1.0
                self.tbcLabel.transform = CGAffineTransform(translationX: 0, y: -50)
            }) { _ in
                UIView.animate(withDuration: 2.0, animations: {
                    self.tbcLabel.alpha = 0.0
                    self.tbcLabel.transform = .identity
                }) { _ in
                    self.labelAnimation()
                }
            }
        }

}

