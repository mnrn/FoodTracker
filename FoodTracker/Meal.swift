//
//  Meal.swift
//  FoodTracker
//
//  Created by n on 2020/04/24.
//  Copyright © 2020 n. All rights reserved.
//

import UIKit

class Meal {
  // MARK: Properties
  var name: String
  var photo: UIImage?
  var ratng: Int
  
  // MARK: Initializaton
  init?(name: String, photo: UIImage?, rating: Int) {
    // The name must not be empty
    guard !name.isEmpty else {
      return nil
    }
    
    // The rating must be between 0 and 5 inclusively
    guard (rating >= 0) && (rating <= 5) else {
      return nil
    }
    
    self.name = name
    self.photo = photo
    self.ratng = rating
  }
}