//
//  FilterTutorialsView.swift
//  互动教程
//
//  Created by Apple on 2021/2/3.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import SwiftUI

struct FilterTutorialsView: View {
    var keyword : String = ""//添加一个属性，用来接收上一个页面传来的关键词，通过该关键词搜索并显示相关的课程
    
    var body: some View {
        Text("第五个界面")
    }
}

struct FilterTutorialsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterTutorialsView()
    }
}
