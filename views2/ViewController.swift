//
//  ViewController.swift
//  views2
//
//  Created by kishore-pt5557 on 03/08/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    var pickerView: UIPickerView!
//    var pickerView1: UIPickerView!

//    let arr = ["Home", "Feed", "Profile"]
//    let arr1 = ["Home", "Feed"]
//    let arr2 = ["A", "B", "C", "D", "E"]
    
    var dict: Dictionary<UIPickerView, Array<Array<String>>>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dict = [UIPickerView(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: 300)): [["A", "B", "C", "D", "E"]], UIPickerView(frame: CGRect(x: 0, y: view.frame.height-350, width: view.frame.width, height: 300)): [["1", "2"], ["1", "2", "3"]]]
        
        for (key, _) in dict {
            pickerView = key
            pickerView.delegate = self
            pickerView.dataSource = self
            view.addSubview(pickerView)
        }
        
        
//        pickerView1 = UIPickerView()
//        pickerView1.delegate = self
//        pickerView1.dataSource = self
//        view.addSubview(pickerView1)
//        pickerView1.frame = CGRect(x: 0, y: view.frame.height-350, width: view.frame.width, height: 300)

        let progressView = UIProgressView(progressViewStyle: .bar)
        view.addSubview(progressView)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.trackTintColor = .gray
        progressView.progressTintColor = .systemBlue
        progressView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        progressView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        progressView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        progressView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        progressView.setProgress(0.80, animated: true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return (dict[pickerView]?.count)!
//        if (self.pickerView == pickerView) {
//            return 1
//        }
//        else {
//            return 2
//        }
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        let arr = dict[pickerView] ?? []
        return arr[component].count
//        if (self.pickerView == pickerView) {
//            return arr2.count
//        }
//        else {
//            if (component == 0) {
//                return arr1.count
//            }
//            else {
//                return arr.count
//            }
//        }
    }
    
    
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        // print(row, component)
//        return arr[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel()
        let arr = dict[pickerView] ?? []
        label.text = arr[component][row]
        
//        if (self.pickerView == pickerView) {
//            label.text = arr2[row]
//        }
//        else {
//            if (component == 0) {
//                label.text = arr1[row]
//            }
//            else {
//                label.text = arr[row]
//            }
//        }
        
        return label
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
    
}
