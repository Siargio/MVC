//
//  ViewController.swift
//  MVC
//
//  Created by Sergio on 29.09.22.
//

import UIKit

class ViewController: UIViewController {

    private var count = 0
    private var testData: [Crypto] = []

    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
    }

    func setupInitialState() {
        displayData(i: count)
    }

    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }

    func displayData(i: Int) {
        if testData.count >= 0 {
            
//        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
//            nameLabel.text = testData[i].name
//            view.tickerLabel.text = testData[i].ticker
//            valueLabel.text = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }

    func getRandomCount() -> Int {
        let randomCount = Int.random(in: 0 ..< testData.count)
        return randomCount
    }
}
