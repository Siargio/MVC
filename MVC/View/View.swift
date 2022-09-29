//
//  View.swift
//  MVC
//
//  Created by Sergio on 29.09.22.
//

import UIKit

class MainView: UIView {

// MARK: - UIElements

    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.layer.cornerRadius = 10
        nameLabel.backgroundColor = .black
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()

    private lazy var tickerLabel: UILabel = {
        let tickerLabel = UILabel()
        tickerLabel.backgroundColor = .blue
        tickerLabel.translatesAutoresizingMaskIntoConstraints = false
        return tickerLabel
    }()

    private lazy var valueLabel: UILabel = {
        let valueLabel = UILabel()
        valueLabel.backgroundColor = .gray
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        return valueLabel
    }()

    private lazy var nameButton: UIButton = {
        let nameButton = UIButton()
        nameButton.layer.cornerRadius = 20
        nameButton.backgroundColor = .yellow
        nameButton.addTarget(self, action: #selector(addPressed), for: .touchUpInside)
        nameButton.translatesAutoresizingMaskIntoConstraints = false
        return nameButton
    }()

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Action

    @objc func addPressed() {

    }


    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(nameLabel)
        addSubview(tickerLabel)
        addSubview(valueLabel)
        addSubview(nameButton)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            nameLabel.widthAnchor.constraint(equalToConstant: 200),
            nameLabel.heightAnchor.constraint(equalToConstant: 40),

            tickerLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 50),
            tickerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            tickerLabel.widthAnchor.constraint(equalToConstant: 200),
            tickerLabel.heightAnchor.constraint(equalToConstant: 40),

            valueLabel.topAnchor.constraint(equalTo: tickerLabel.bottomAnchor, constant: 50),
            valueLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            valueLabel.widthAnchor.constraint(equalToConstant: 200),
            valueLabel.heightAnchor.constraint(equalToConstant: 40),

            nameButton.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 200),
            nameButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            nameButton.widthAnchor.constraint(equalToConstant: 200),
            nameButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
