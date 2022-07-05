//
//  CallRow.swift
//  spam_blocker
//
//  Created by Seonghyun  Park on 6/24/22.
//

import SwiftUI
import CallKit


struct CallRow: View {
    var data: PhoneData
    
    

    var body: some View {
        HStack{
            
            Spacer()
            VStack(alignment: .leading, spacing: 0) {
                Text(data.name)
                    .fontWeight(.bold)
                    .frame(width: 150, height: 20,alignment: .leading)
                Text(data.who)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .frame(width: 150, height: 20,alignment: .leading)
            }
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Text(data.date)
                .foregroundColor(Color.gray)
                .font(.subheadline)
            
            Menu {
                Button("unblock") {unblock()}
            } label: {
                Image(systemName: "info.circle")
                    .font(.title)
                    .scaleEffect(0.8)
                  
            }
            .menuStyle(.borderlessButton)
            .menuIndicator(.hidden)
        }
        
        
        
    }
    func unblock() {
    
        class CustomCallDirectoryProvider: CXCallDirectoryProvider {
            override func beginRequest(with context: CXCallDirectoryExtensionContext) {
                let blockedPhoneNumbers: [CXCallDirectoryPhoneNumber] = [12345 ]
                for phoneNumber in blockedPhoneNumbers.sorted(by: <) {
                    context.addBlockingEntry(withNextSequentialPhoneNumber: phoneNumber)
                }
                
                context.completeRequest()
            }
        }
    
    }
}

struct CallRow_Previews: PreviewProvider {
    
    static var previews: some View {
        CallRow(data: ModelData().phonedatas[0])
            
    }
}
