//
//  IndexClassListPart.swift
//  互动教程
//
//  Created by Apple on 2021/2/4.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import SwiftUI

struct IndexClassListPart: View {
    @EnvironmentObject var status:ModelStatus//添加一个拥有environmentObject标记的属性，当用户在点击某一个班级时，向该环境属性传递数据
    @State var shouldPushClasslist = false
    var classImagelist = ["pencil.slash","paperplane","tray.fill","tray.full.fill","book","calendar","doc.text","flame","suit.club.fill"]
    var classNameList = ["ios Programming","Swift Programming","Advanced Programming","Objective-C Programming","Photoshop Tutorials","Illustartor Tutoririals","Photoshop Script","PhootshoopCS5","Excel Tuturials"]
    
    var bgImageName = "2.png"
    var body: some View {
        VStack(alignment: .leading){
            Text("Class List")
                .font(.system(size: 16))
                .padding(.leading,20)
                .foregroundColor(Color.init(red: 0.4, green: 0.4, blue: 0.4))
                .offset(x:0,y: 16)
            ZStack{
            
            RoundedRectangle(cornerRadius: 10)
                             .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 250/255, green: 120/255, blue: 100/255),Color(red: 225/255, green: 195/255, blue: 115/255)]), startPoint: .leading, endPoint: .trailing))
                             .offset(x:20,y: 0)
            ScrollView(Axis.Set.horizontal,showsIndicators: false)
            {
                NavigationLink(destination: PageCategories(),isActive: $shouldPushClasslist)
                {
                    HStack{
                        ForEach(0..<classNameList.count)
                        {
                            item in
                            VStack
                                {
                                    Image(systemName: self.classImagelist[item])
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                    
                                    Text(self.classNameList[item])
                                        .font(.system(size: 12))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color.white)
                                        .offset(x:0,y:2)
                                    .padding(10)
                            }
                            .background(Image(systemName: self.bgImageName).resizable())
                            .onTapGesture {
                                self.status.tempStringValue = self.classNameList[item]
                                self.shouldPushClasslist = true
                            }
                        }
                    }
                }
                .padding(Edge.Set.init(arrayLiteral: .top),10)
            }
            .padding(.leading,20)
        }
        .padding(.top,20)
    }
}
}
struct IndexClassListPart_Previews: PreviewProvider {
    static var previews: some View {
        IndexClassListPart()
    }
}
