//
//  ViewController.swift
//  base
//
//  Created by Guilherme on 9/16/18.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configUI()
  }

  func configUI() {
    let label = UILabel()
    label.text = Environment.shared.value(for: .endpoint)
    label.sizeToFit()
    label.center = view.center
    view.addSubview(label)
  }
}

