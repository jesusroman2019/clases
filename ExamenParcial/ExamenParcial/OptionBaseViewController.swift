//
//  OptionBaseViewController.swift
//  ExamenParcial
//
//  Created by user191554 on 6/10/22.
//

import UIKit

class OptionBaseViewController: UIViewController {
    @IBAction private func clickBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
