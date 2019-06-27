//
//  LoginViewController.swift
//  GreenLight
//
//  Created by HongWeonpyo on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // basic UI
    let signUpBtn = UIButton()
    let signInBtn = UIButton()
    let signInTitleLbl = UILabel()
    let idLbl = UILabel()
    let pwLbl = UILabel()
    let idTxtField = UITextField()
    let pwTxtField = UITextField()
    let idUnderLineLbl = UILabel()
    let pwUnderLineLbl = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.5843137255, blue: 0.6117647059, alpha: 1)
        
        textFieldsConfigure()
        
        signInTitleLblConfiguration()
        signInTitleLblLayout()
        
        idLblConfiguration()
        idLblLayout()
        
        idTxtFieldConfiguration()
        idTxtFieldLayout()
        
        idUnderLineLblConfiguration()
        idUnderLineLblLayout()
        
        pwLblConfiguration()
        pwLblLayout()
        
        pwTxtFieldConfiguration()
        pwTxtFieldLayout()
        
        pwUnderLineLblConfiguration()
        pwUnderLineLblLayout()
        
        signInBtnConfiguration()
        signInBtnLayout()
        
        signUpBtnConfiguration()
        signUpBtnLayout()
        
        
    }
    
    // 아이디, 비밀번호 텍스트 필드 델리게이트와 키보드 리턴타입 변경
    private func textFieldsConfigure() {
        
        idTxtField.returnKeyType = .done
        pwTxtField.returnKeyType = .done
        idTxtField.delegate = self
        pwTxtField.delegate = self
    }
    
    // 화면 상단 로그인 타이틀 레이블 기본 구성 사항
    private func signInTitleLblConfiguration() {
        
        signInTitleLbl.text = "로그인"
        signInTitleLbl.textColor = .white
        signInTitleLbl.font = UIFont.boldSystemFont(ofSize: 30)
        signInTitleLbl.backgroundColor = .clear
        signInTitleLbl.textAlignment = .left
        
        self.view.addSubview(signInTitleLbl)
    }
    
    // 화면 상단 로그인 타이틀 레이블 오토 레이아웃
    private func signInTitleLblLayout() {
        
        signInTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        signInTitleLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        signInTitleLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signInTitleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        signInTitleLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    // 아이디 타이틀 레이블 기본 구성 사항
    private func idLblConfiguration() {
        
        idLbl.text = "아이디"
        idLbl.textColor = .white
        idLbl.font = UIFont.boldSystemFont(ofSize: 15)
        idLbl.backgroundColor = .clear
        idLbl.textAlignment = .left
        
        self.view.addSubview(idLbl)
        
    }
    
    // 아이디 타이틀 레이블 오토 레이아웃
    private func idLblLayout() {
        
        idLbl.translatesAutoresizingMaskIntoConstraints = false
        
        idLbl.topAnchor.constraint(equalTo: signInTitleLbl.bottomAnchor, constant: 40).isActive = true
        idLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        idLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        idLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    // 아이디 입력 텍스트 필드 기본 구성 사항
    private func idTxtFieldConfiguration() {
        
        idTxtField.textAlignment = .left
        idTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        idTxtField.textColor = .white
        idTxtField.backgroundColor = .clear
        
        self.view.addSubview(idTxtField)
        
    }
    
    // 아이디 입력 텍스트 필드 오토 레이아웃
    private func idTxtFieldLayout() {
        
        idTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        idTxtField.topAnchor.constraint(equalTo: idLbl.bottomAnchor, constant: 5).isActive = true
        idTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        idTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        idTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    // 아이디 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func idUnderLineLblConfiguration() {
        
        idUnderLineLbl.backgroundColor = .white
        self.view.addSubview(idUnderLineLbl)
    }
    
    // 아이디 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func idUnderLineLblLayout() {
        
        idUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false
        
        idUnderLineLbl.topAnchor.constraint(equalTo: idTxtField.bottomAnchor, constant: 5).isActive = true
        idUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        idUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        idUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
    }
    
    // 비밀번호 타이틀 레이블 기본 구성 사항
    private func pwLblConfiguration() {
        
        pwLbl.text = "비밀번호"
        pwLbl.textColor = .white
        pwLbl.font = UIFont.boldSystemFont(ofSize: 15)
        pwLbl.backgroundColor = .clear
        pwLbl.textAlignment = .left
        
        self.view.addSubview(pwLbl)
        
    }
    
    // 비밀번호 타이틀 레이블 오토 레이아웃
    private func pwLblLayout() {
        
        pwLbl.translatesAutoresizingMaskIntoConstraints = false
        
        pwLbl.topAnchor.constraint(equalTo: idUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        pwLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        pwLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        pwLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    // 비밀번호 입력 텍스트 필드 기본 구성 사항
    private func pwTxtFieldConfiguration() {
        
        pwTxtField.textAlignment = .left
        pwTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        pwTxtField.textColor = .white
        pwTxtField.backgroundColor = .clear
        pwTxtField.isSecureTextEntry = true
        
        self.view.addSubview(pwTxtField)
    }
    
    // 비밀번호 입력 텍스트 필드 오토 레이아웃
    private func pwTxtFieldLayout() {
        
        pwTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        pwTxtField.topAnchor.constraint(equalTo: pwLbl.bottomAnchor, constant: 5).isActive = true
        pwTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        pwTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        pwTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    // 비밀번호 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func pwUnderLineLblConfiguration() {
        
        pwUnderLineLbl.backgroundColor = .white
        self.view.addSubview(pwUnderLineLbl)
    }
    
    // 비밀번호 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func pwUnderLineLblLayout() {
        
        pwUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false
        
        pwUnderLineLbl.topAnchor.constraint(equalTo: pwTxtField.bottomAnchor, constant: 5).isActive = true
        pwUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        pwUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        pwUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
    }
    
    // 로그인 버튼 기본 구성 사항
    private func signInBtnConfiguration() {
        
        signInBtn.setTitle("로그인", for: .normal)
        signInBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        signInBtn.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.5843137255, blue: 0.6117647059, alpha: 1)
        signInBtn.titleLabel?.textAlignment = .center
        signInBtn.layer.borderWidth = 3
        signInBtn.layer.borderColor = UIColor.white.cgColor
        signInBtn.layer.cornerRadius = 10
        
        signInBtn.addTarget(self, action: #selector(didTabSignInBtn(_:)), for: .touchUpInside)
        
        self.view.addSubview(signInBtn)
    }
    
    // 로그인 버튼 오토 래이아웃
    private func signInBtnLayout() {
        
        signInBtn.translatesAutoresizingMaskIntoConstraints = false
        
        signInBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        signInBtn.topAnchor.constraint(equalTo: pwUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        signInBtn.widthAnchor.constraint(equalToConstant: 394).isActive = true
        signInBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    // 로그인 버튼 액션 구현
    @objc private func didTabSignInBtn(_ sender: UIButton) {
        
        let signToggleVC = SignToggleViewController()
        present(signToggleVC, animated: true)
        
        print("tapped signInBtn")
    }
    
    // 회원가입 버튼 기본 구성 사항
    private func signUpBtnConfiguration() {
        
        signUpBtn.setTitle("회원가입", for: .normal)
        signUpBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        signUpBtn.setTitleColor(.white, for: .normal)
        signUpBtn.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.5843137255, blue: 0.6117647059, alpha: 1)
        signUpBtn.titleLabel?.textAlignment = .center
        signUpBtn.layer.borderWidth = 3
        signUpBtn.layer.borderColor = UIColor.white.cgColor
        signUpBtn.layer.cornerRadius = 10
        signUpBtn.addTarget(self, action: #selector(didTapSignUpBtn(_:)), for: .touchUpInside)
        
        self.view.addSubview(signUpBtn)
    }
    
    // 회원가입 버튼 오토 래이아웃
    private func signUpBtnLayout() {
        
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        
        signUpBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        signUpBtn.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 5).isActive = true
        signUpBtn.widthAnchor.constraint(equalToConstant: 394).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    // 회원가입 버튼 액션 구현
    @objc private func didTapSignUpBtn(_ sender: UIButton) {
        
        print("tapped signUpBtn")
        
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    
    // 화면 터치시 키보드 내려가기 기능
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    // 아이디, 비밀번호 텍스트 필드에서 아이디, 비밀번호 입력 후 리턴 누르면 키보드 내려가는 기능
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pwTxtField.resignFirstResponder()
        idTxtField.resignFirstResponder()
        return true
    }
    
}

