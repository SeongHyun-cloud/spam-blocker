//
//  CallkitLoader.swift
//  spam_blocker
//
//  Created by Seonghyun  Park on 7/3/22.
//

import SwiftUI
import CallKit
struct CallkitLoader: View {
    var body: some View {
        Button("reload", action: reloadCallkit)
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
    
    private func printsomething() {
        print("something!")
    }
}

struct CallkitLoader_Previews: PreviewProvider {
    static var previews: some View {
        CallkitLoader()
    }
}
