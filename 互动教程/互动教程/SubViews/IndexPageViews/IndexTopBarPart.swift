//
//  IndexTopBarPart.swift
//  互动教程
//
//  Created by Apple on 2021/2/3.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import SwiftUI

struct IndexTopBarPart: View {
    @State private var tutorialName:String = ""
    //首先x添加一个字符串属性作为和课程搜索输入框进行绑定的状态属性
    @State var isActive = false
    @State var shouldShowAlert = false
    
    let dismissButton = Alert.Button.default(Text("OK")){}
    var alert:Alert{
        Alert(title: Text("Alert"), message: Text("Please input keyword frist"), dismissButton: dismissButton)
    }
    
    var body: some View {
        HStack{
            NavigationLink(destination: HistoryTutorialsView())
            {
            Image(systemName: "circle.grid.3x3.fill")
                .font(.system(size: 22))
                .foregroundColor(Color.gray)
            }
            
            Spacer()
                .frame(width:20)
            ZStack(alignment: Alignment.trailing){
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 1)//设置距形的宽度为1
                    .fill(Color.init(red: 0.9, green: 0.9, blue: 0.9))
                    .frame(height:30)
                
                TextField("Tutorial",text: $tutorialName)
                    .padding(5)
                    .cornerRadius(5)
                    .font(.system(size: 14))
                
                NavigationLink(destination: FilterTutorialsView(keyword:self.tutorialName),isActive: $isActive){
                    Text("")
                }
                Image(systemName: "icon-plus-search.png")
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)
                    .padding(.trailing,15)
                    .onTapGesture {
                        if self.tutorialName.isEmpty
                        {
                            self.shouldShowAlert = true
                        }
                        else
                        {
                            self.isActive = true
                            self.shouldShowAlert = false
                        }
                }
                .alert(isPresented: $shouldShowAlert, content: {
                    alert
                })
            }
            
            Spacer()
                .frame(width:20)
            NavigationLink(destination: PageMessagesView()){
                Image(systemName: "3.circle.fill")
                    .foregroundColor(Color.red)
                    .font(.system(size: 24))
            }
        }
        .padding(.leading,20)
        .padding(.trailing,20)
        .padding(.top,0)
        .padding(.bottom,10)
    }
}

struct IndexTopBarPart_Previews: PreviewProvider {
    static var previews: some View {
        IndexTopBarPart()
    }
}
