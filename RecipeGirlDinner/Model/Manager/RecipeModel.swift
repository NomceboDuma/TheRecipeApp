//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by mt on 11.05.2020.
//  Copyright © 2020 S3soft. All rights reserved.
//
import Foundation

struct RecipeResponse: Decodable {
    let  results: [Result]
    
}
struct Recipe: Decodable, Identifiable {
    let id: Int
    let title: String
    let imageType: ImageType
    
    private enum CodableKeys: String, CodingKey {
      case id = "Int"
       case title = "title"
       case imageType = "Imagetype"
    }
}
