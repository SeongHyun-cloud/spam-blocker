//
//  CallList.swift
//  spam_blocker
//
//  Created by Seonghyun  Park on 6/26/22.
//

import SwiftUI

struct CallList: View {
    let data = ModelData().phonedatas
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            VStack{
            
            List(data) { PhoneData in
                CallRow(data: PhoneData)
            }
            .listStyle(.plain)
            
            }
         
        }
        .searchable(text: $searchText)
        
        
    }
    
    func unblock() {
        
    }
    
}

struct CallList_Previews: PreviewProvider {
    static var previews: some View {
        CallList()
    }
}
