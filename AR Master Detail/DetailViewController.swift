//
//  DetailViewController.swift
//  AR Master Detail
//
//  Created by Larry Nickerson on 2/11/19.
//  Copyright © 2019 Lawrence Nickerson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var detailDescriptionLabel: UILabel!


  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
        if let label = detailDescriptionLabel {
            label.text = detail.timestamp!.description
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configureView()
  }

  var detailItem: Event? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}

