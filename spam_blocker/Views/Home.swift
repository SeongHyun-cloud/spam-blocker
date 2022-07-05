//
//  Home.swift
//  spam_blocker
//
//  Created by Seonghyun  Park on 6/19/22.
//

import SwiftUI
import CallKit

struct Home: View {
    
    @State private var alertIsPresented: Bool = false
    @State private var viewAppeared: Bool = false
    
    
    var body: some View {
        VStack(){
            Text("test")
        Text("차단된 전화 수 +100,000")
        Text("차단된 문자 수 + 100,000")
        Text("차단 목록 관리하기")
            
        Text("피드백 하기 ")
                .onAppear() {
                    if (!viewAppeared) {
                    print("appeared!")
                    reloadCallkit()
                    viewAppeared = true
                    }else {
                        print("already appeared")
                    }
                }
                
                
        
            Button(action: {
                self.alertIsPresented = true
                
            }, label:{
                Text("qwe")
                
            }
            )
            .alert(isPresented: $alertIsPresented,
                   content: {
                    Alert(title: Text("qweqwe"),
                          message: Text("yes"),
                          primaryButton: .default(Text("yes"), action: {}), secondaryButton: .cancel(Text("no")))
            })
        
            
            
        }
    }
    private func reloadCallkit() {
        print("start")
        CXCallDirectoryManager.sharedInstance.reloadExtension(withIdentifier: "com.spark.spam-blocker.CallkitBlock") { error in
            if error != nil {
                print("q1")
                print(error!.localizedDescription)
                print("q2")
            } else {
                print("q3")
                print("success")
                print("q4")
            }
            
        }
        print("end")
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
