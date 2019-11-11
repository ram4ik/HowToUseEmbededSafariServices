//
//  ContentView.swift
//  HowToUseEmbededSafariServices
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI
import SafariServices

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        Button(action: {
            self.show.toggle()
        }) {
            Text("Safari Services").padding().foregroundColor(.white)
        }.background(LinearGradient(gradient: .init(colors: [.orange, .red]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
            .sheet(isPresented: $show) {
                safari()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct safari: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<safari>) -> SFSafariViewController {
        
        let controller = SFSafariViewController(url: URL(string: "https://www.youtube.com/watch?v=FvVnP8G6ITs")!)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<safari>) {
        
    }
}
