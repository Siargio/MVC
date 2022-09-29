//
//  ViewController.swift
//  MVC
//
//  Created by Sergio on 29.09.22.
//

import UIKit

final class ViewController: UIViewController {

    private var count = 0
    private var testData: [Crypto] = []

    private var mainView: MainView? {
        guard isViewLoaded else { return nil }
        return view as? MainView
    }

    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
        mainView?.nameButton.addTarget(self, action: #selector(addPressed), for: .touchUpInside) // ВОПРОСИК
    }

    private func setupInitialState() {
        displayData(i: count)
    }

    private func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }

    // MARK: - Action

    @objc func addPressed() {
        displayData(i: getRandomCount())
    }

    private func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            mainView?.nameLabel.text = testData[i].name

            mainView?.tickerLabel.text = testData[i].ticker
            mainView?.valueLabel.text = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }

    private func getRandomCount() -> Int {
        let randomCount = Int.random(in: 0 ..< testData.count)
        return randomCount
    }
}
