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
        GuideModel(imageUrl: "Guide_1", title: "消息", description: "消息描述消息描述消息描述消息描述消息描述", order: 1, isLast: false),
        GuideModel(imageUrl: "Guide_2", title: "邮件", description: "邮件描述邮件描述邮件描述邮件描述邮件描述邮件描述邮件描述", order: 2, isLast: false),
        GuideModel(imageUrl: "Guide_3", title: "工作台", description: "工作台描述工作台描述工作台描述工作台描述工作台描述工作台描述", order: 3, isLast: true)
        
    ]
    
    
    func getData() -> [GuideModel] {
        dataArray
    }
    
    
    
    
}
