//
//  GuideModel.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/4.
//

import Foundation

struct GuideModel: Identifiable {
   
    let id: String = UUID().uuidString

    let imageUrl: String
    
    let title: String
    
    let description: String
    
    let order: Int
    
    let isLast: Bool
    
}
