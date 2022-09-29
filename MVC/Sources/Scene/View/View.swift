//
//  View.swift
//  MVC
//
//  Created by Sergio on 29.09.22.
//

import UIKit

final class MainView: UIView {

    // MARK: - UIElements

    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.layer.cornerRadius = 20
        nameLabel.textAlignment = .center
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()

    let tickerLabel: UILabel = {
        let tickerLabel = UILabel()
        tickerLabel.textAlignment = .center
        tickerLabel.translatesAutoresizingMaskIntoConstraints = false
        return tickerLabel
    }()

    let valueLabel: UILabel = {
        let valueLabel = UILabel()
        valueLabel.textAlignment = .center
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        return valueLabel
    }()

    let nameButton: UIButton = {
        let nameButton = UIButton()
        nameButton.layer.cornerRadius = 20
        nameButton.backgroundColor = .yellow
        nameButton.setTitle("Touch me", for: .normal)
        nameButton.setTitleColor(.black, for: .normal)
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
