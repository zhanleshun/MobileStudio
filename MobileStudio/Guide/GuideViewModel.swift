//
//  GuideModelView.swift
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/4.
//

import Foundation


class GuideViewModel {
    
    /// TODO: 按照order排序 
    @Published var dataArray: [GuideModel] = [
        GuideModel(imageUrl: "Guide_1", title: "消息", description: "随时随地，在线沟通", order: 1, isLast: false),
        GuideModel(imageUrl: "Guide_2", title: "邮件", description: "邮件往来，移动办公", order: 2, isLast: false),
        GuideModel(imageUrl: "Guide_3", title: "工作台", description: "一站式工作台，轻松掌握", order: 3, isLast: true)
        
    ]
    
    
    func getData() -> [GuideModel] {
        dataArray
    }
    
    
    
    
}
