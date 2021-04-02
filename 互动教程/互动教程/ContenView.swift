//
//  ContenView.swift
//  互动教程
//
//  Created by Apple on 2021/2/1.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//
import Foundation
import SwiftUI

struct ContenView: View {
    @State var isAnimating = false
    var body: some View {
        NavigationView
            {
                ScrollView
                    {
                        VStack
                            {
                                IndexTopBarPart()
                                    .opacity(isAnimating ? 1 : 0)
                                    .animation(Animation.spring().delay(0.1))
                                
                                IndexCategoryPartList()
                                    .opacity(isAnimating ? 1 : 0)
                                    .animation(Animation.spring().delay(0.2))
                                
                                IndexClassListPart()
                                    .opacity(isAnimating ? 1 : 0)
                                    .animation(Animation.spring().delay(0.3))
                                IndexTopicsListPart()
                                    .opacity(isAnimating ? 1 : 0)
                                    .animation(Animation.spring().delay(0.4))
                        }
                }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .padding(.top,20)
            .onAppear{
                    self.isAnimating = true
                }
                
        }
    }
}

struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        ContenView()
    }
}
