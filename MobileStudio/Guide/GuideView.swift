//
//  引导页
//  MobileStudio
//
//  Created by 詹乐顺 on 2023/6/3.
//

import SwiftUI

struct GuideView: View {
    
    // MARK: PROPERTIES
            
    var guideViewModel: GuideViewModel = GuideViewModel()
    
    @AppStorage("isGuide") var isGuide: Bool = false
        
    // MARK: BODY
    
    var body: some View {

        VStack {
            TabView {
                ForEach(guideViewModel.dataArray) { data in
                    VStack {
                        Image(data.imageUrl)
                            .resizable()
                            .scaledToFit()
                            .font(.largeTitle)
                            .frame(width: 350, height: 350)
                            .foregroundColor(.accentColor)
                            .padding()

                        Text(data.title)
                            .font(.title)
                            .fontWeight(.medium)
                            .padding()
                        
                        Text(data.description)
                            .font(.title3)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        if data.isLast {
                            Text("开启使用")
                                .padding()
                                .padding(.horizontal, 20)
                                .frame(alignment: .center)
                                .foregroundColor(.white)
                                .background(Color.accentColor)
                                .cornerRadius(5)
                                .onTapGesture {
                                    isGuide = true
                                }
                        }
                        
                    }
                    .tag("\(data.order)")
                }
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
        }
        
    }
}

struct GuideView_Previews: PreviewProvider {

    static var previews: some View {

        GuideView()
    }
}





