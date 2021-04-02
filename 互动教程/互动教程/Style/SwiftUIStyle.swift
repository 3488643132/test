//
//  SwiftUIStyle.swift
//  互动教程
//
//  Created by Apple on 2021/2/3.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import Foundation
import SwiftUI
struct BigTitle:ViewModifier {
    func body(content:Content) -> some View {
        content
            .font(.system(size: 24))
            .foregroundColor(.init(red: 0.3, green: 0.3, blue: 0.3))
    }
}

struct MiddleTitle:ViewModifier {
    func body(content:Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundColor(.init(red: 0.3, green: 0.3, blue: 0.3))
    }
}

struct RegularTitle:ViewModifier {
    func body(content:Content) -> some View {
        content
            .font(.system(size: 15))
            .foregroundColor(.init(red: 0.3, green: 0.3, blue: 0.3))
    }
}

struct RegularTitleOption:ViewModifier {
    var isHighlight = false
    
    func body(content:Content) -> some View {
        if isHighlight {
            return content
                .font(.system(size: 15))
                .foregroundColor(Color.init(red: 255/255, green: 123/255, blue: 109/255))
        }
        else
        {
            return content
                .font(.system(size: 15))
                .foregroundColor(Color.gray)
        }
    }
}

struct CommonButton:ViewModifier {
    var isEnable = false
    func body(content:Content) -> some View {
        if (isEnable) {
            return content
                .padding()
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.init(red: 255/255, green: 123/255, blue: 109/255)))
                .foregroundColor(.white)
                .font(.system(size: 15))
        }
        else{
            return content
            .padding()
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.gray))
                .foregroundColor(.white)
                .font(.system(size: 15))
        }
    }
    
}

struct CategoryLabel:ViewModifier {
    private let colors = [Color.orange,Color.purple,Color.red,Color.green,Color.blue,Color.pink]
    func body(content:Content) -> some View {
        content
        .padding(12)
            .background(RoundedRectangle(cornerRadius: 14).fill(colors[Int.random(in: 0...5)]))
            .font(.system(size: 13))
            .foregroundColor(.white)
    }
}

struct LoadingText:ViewModifier {
    @State private var brightness:Double = 0.0
    //该修饰器拥有一个动画效果，他会在加载远程数据时，使提示文字不停闪烁。
    //首先添加一个属性，作为加载文字的亮度信息，通过提高文字的亮度，给文字添加闪烁
    func body(content:Content) -> some View {
        content
            .padding(.leading,20)
//        .modifier(SmallText())
            .brightness(brightness)
            .animation(Animation.spring().repeatForever())
            .onAppear{
                self.brightness = 1.0
        }
    }
}
