//
//  ContentView.swift
//  spam_blocker
//
//  Created by Seonghyun  Park on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            Home()
                .tabItem() {
                    Image(systemName: "house")
                    Text("홈")
                   
                }
                
            BlockedCalls()
                .tabItem() {
                    Image(systemName: "phone")
                    
                    Text("차단된 전화")
                }
            BlockedMsg()
                .tabItem() {
                    Image(systemName: "message")
                    Text("차단된 문자")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
