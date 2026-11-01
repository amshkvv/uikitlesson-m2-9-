//
//  ColletionCell.swift
//  m2l9
//
//  Created by AndreyM on 31.10.2026.
//

import UIKit


class CollectionCell : UICollectionViewCell {
    
    static let cellId = "CollectionCell"
    
    var actionBtn : (()-> Void)?
    
    
    lazy var userName : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 18, weight: .black)
        $0.text = "Name Last Name"
        return $0
    }(UILabel())
    
    lazy var contentImage : UIImageView  = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var titleLabel : UILabel  = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 18, weight: .black)
        $0.text = "Title"
        return $0
    }(UILabel())
    
    lazy var dateLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "20.10.26"
        return $0
    }(UILabel())
    
    lazy var contentLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        $0.text = "lorem"
        return $0
    }(UILabel())
    
    lazy var btn : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .green
        $0.tintColor = .white
        $0.setTitle("Next", for: .normal)
        $0.layer.cornerRadius = 25
        return $0
    }(UIButton(primaryAction: UIAction{ [weak self] _ in
        self?.actionBtn?()
        
    }))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGray5

        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        userName.text = nil
        contentImage.image = nil
        titleLabel.text = nil
        dateLabel.text = nil
        contentLabel.text = nil
        
        contentImage.constraints.forEach{ const in
            contentImage.removeConstraint(const)
        }
    }
    
    
    func setupCell(items: MockData) {
        userName.text = items.userName
        contentImage.image = UIImage(named: items.contentImage)
        titleLabel.text = items.title
        dateLabel.text = items.date
        contentLabel.text = items.content
        
        
        contentView.addSubview(userName)
        contentView.addSubview(contentImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(contentLabel)
        contentView.addSubview(btn)
        
        setConstraints()
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
            userName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            userName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            userName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            
            contentImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            contentImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            contentImage.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 10),
            contentImage.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.height) / 2),
            
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            titleLabel.topAnchor.constraint(equalTo: contentImage.bottomAnchor, constant: 10),
            titleLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20),
            
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            
            contentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            contentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            contentLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            
            btn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            btn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            btn.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 10),
            btn.heightAnchor.constraint(equalToConstant: 50),
            btn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)

        ])
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
