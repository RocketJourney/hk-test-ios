//
//  ViewController.swift
//  HKTest
//
//  Created by Erik on 9/20/18.
//  Copyright © 2018 RocketJourney. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupHealthKit()
  }
  
  
  func setupHealthKit() -> Void {
    if HKHealthStore.isHealthDataAvailable() {
      let types = Set([HKSampleType.workoutType()])
      let healthStore = HKHealthStore()
      
      healthStore.requestAuthorization(toShare: types, read: types) { (success, error) in
        if !success {
          // Handle the error here.
          print("Sin permisos")
        }
      }
    }
  }


}

