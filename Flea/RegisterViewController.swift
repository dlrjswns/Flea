//
//  RegisterViewController.swift
//  Flea
//
//  Created by 이건준 on 2022/03/14.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private lazy var idTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "  ID"
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.black.cgColor
        return tf
    }()
    
    private lazy var pwTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "  PWD"
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.black.cgColor
        return tf
    }()
    
    private lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "  Email"
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.black.cgColor
        return tf
    }()
    
    private lazy var registerButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("로그인", for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.black.cgColor
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        Networking.shared.postEX()
    }
    
    func configureUI() {
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        view.addSubview(idTextField)
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        idTextField.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        idTextField.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        view.addSubview(pwTextField)
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        pwTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor).isActive = true
        pwTextField.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        pwTextField.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.topAnchor.constraint(equalTo: pwTextField.bottomAnchor).isActive = true
        registerButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        registerButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250).isActive = true
        
    }
}
