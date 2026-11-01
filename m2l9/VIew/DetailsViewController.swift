//
//  DetailsViewController.swift
//  m2l9
//
//  Created by AndreyM on 31.10.2026.
//

import UIKit

class DetailsViewController: UIViewController {

    private let item : MockData
    
    init(item : MockData) {
        self.item = item
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var userName : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var contentImage : UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var titleLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var dateLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var contentLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(userName)
        view.addSubview(contentImage)
        view.addSubview(titleLabel)
        view.addSubview(dateLabel)
        view.addSubview(contentLabel)
        
        setConstrainte()
        
        userName.text = item.userName
        contentImage.image = UIImage(named: item.contentImage)
        titleLabel.text = item.title
        dateLabel.text = item.date
        contentLabel.text = item.content
        
    }
    
    func setConstrainte (){
        NSLayoutConstraint.activate([
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            userName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            userName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            contentImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            contentImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            contentImage.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 10),
            contentImage.heightAnchor.constraint(equalToConstant: 300),
            
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            titleLabel.topAnchor.constraint(equalTo: contentImage.bottomAnchor, constant: 10),
            
            dateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            dateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            
            contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            contentLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            
        ])
    }

}
