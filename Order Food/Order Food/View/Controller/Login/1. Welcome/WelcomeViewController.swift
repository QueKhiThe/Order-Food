//
//  WelcomeViewController.swift
//  Order Food
//
//  Created by MBA0023 on 7/27/19.
//  Copyright © 2019 MBA0023. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var loginTitleButton: UIButton!
    @IBOutlet private weak var signupTitleButton: UIButton!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var submitButton: UIButton!
    @IBOutlet private weak var nameTextFieldConstrantTop: NSLayoutConstraint!
    @IBOutlet private weak var nameTextFieldConstrantHeight: NSLayoutConstraint!
    @IBOutlet private weak var nameLabelConstrantHeight: NSLayoutConstraint!
    @IBOutlet private weak var slideView: UIView!
    @IBOutlet private weak var phoneTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
    }

    // MARK: - IBActions
    @IBAction private func signupButtonTouchUpInside(_ sender: Any) {
        handleClickSignupButton()
        resetInput()
    }

    @IBAction private func loginButtonTouchUpInside(_ sender: Any) {
        handleClickLoginButton()
        resetInput()
    }

    @IBAction private func submitButtonTouchUpInside(_ sender: Any) {

    }
}

// MARK: - Private functions
extension WelcomeViewController {

    private func configUI() {
        submitButton.layer.cornerRadius = 25
        slideView.layer.cornerRadius = 20
    }

    private func handleClickLoginButton() {
        nameTextFieldConstrantTop.constant = 0
        nameTextFieldConstrantHeight.constant = 0
        nameLabelConstrantHeight.constant = 0
        submitButton.setTitle("LOG IN", for: .normal)
        loginTitleButton.setTitleColor(#colorLiteral(red: 0.5843137255, green: 0.07450980392, blue: 0.07450980392, alpha: 1), for: .normal)
        signupTitleButton.setTitleColor(#colorLiteral(red: 0.3498527333, green: 0.3745241117, blue: 0.3647099233, alpha: 1), for: .normal)
    }

    private func handleClickSignupButton() {
        nameLabelConstrantHeight.constant = 21
        nameTextFieldConstrantHeight.constant = 30
        nameTextFieldConstrantTop.constant = 50
        submitButton.setTitle("SIGN UP", for: .normal)
        signupTitleButton.setTitleColor(#colorLiteral(red: 0.5843137255, green: 0.07450980392, blue: 0.07450980392, alpha: 1), for: .normal)
        loginTitleButton.setTitleColor(#colorLiteral(red: 0.3490196078, green: 0.3764705882, blue: 0.3647058824, alpha: 1), for: .normal)
    }

    private func resetInput() {
        phoneTextField.text = ""
        nameTextField.text = ""
        passwordTextField.text = ""
    }
}
