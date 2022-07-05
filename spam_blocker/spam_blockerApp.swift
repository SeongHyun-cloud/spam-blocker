//
//  spam_blockerApp.swift
//  spam_blocker
//
//  Created by Seonghyun  Park on 6/19/22.
//

import SwiftUI
import CallKit

@main
struct spam_blockerApp: App {

    
    var body: some Scene {
        WindowGroup {
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
}
