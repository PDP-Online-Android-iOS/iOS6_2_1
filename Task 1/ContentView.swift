//
//  ContentView.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var welcome = "str_welcome".localized()
        
        var body: some View {
            VStack{
                VStack{
                    Text(welcome)
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack(spacing:0){
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "en")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("English").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.red)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "ru")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("Russian").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.blue)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "uz")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("Uzbek").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.green)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    VStack{
                        Button(action: {
                            Bundle.setLanguage(lang: "fr")
                            welcome = "str_welcome".localized()
                        },label:{
                            Text("Franch").foregroundColor(Color.white)
                                .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.purple)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                }.frame(maxWidth: .infinity, maxHeight: 70)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.locale, .init(identifier: "uz"))
    }
}
