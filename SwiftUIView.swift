//
//  SwiftUIView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 01/04/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
        var body: some View {
            NavigationView {
                List {
                    Section {
                        Text("About")
                        Text("Software Update")
                    }
                    Section {
                        Text("AirDrop")
                        Text("AirPlay & Handoff")
                        Text("Picture in Picture")
                        Text("CarPlay")
                    }
                    Section {
                        Text("iPhone Storage")
                        Text("Background App Refresh")
                    }
                    Section {
                        Text("Date & Time")
                        Text("Keyboard")
                        Text("جميع أسئلتي")
                
                    }
                }
                .navigationTitle("General")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }

    

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
