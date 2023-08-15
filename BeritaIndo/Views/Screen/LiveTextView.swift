//
//  LiveTextView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 15/08/23.
//

import SwiftUI
import VisionKit

struct LiveTextView: View {
    @State private var startScanning = false
    @State private var scanText = ""
    
    @State private var buttonText  = "Copy"
    private let pasteboard = UIPasteboard.general
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottom) {
                DataScanner(startScanning: $startScanning, scanText: $scanText)
                    .frame(height: 400)
                
                Text("tap to capture")
                    .font(.callout)
                    .fontWeight(.thin)
                    .offset(x: 0, y: -16)
            }
            
            ZStack(alignment: .topTrailing) {
                Text(scanText)
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                    .background(in: Rectangle())
                    .backgroundStyle(Color(uiColor: .systemGray6))
                
                Button(action: {
                   copyToClipboard()
                }, label: {
                    Label(buttonText, systemImage: "doc.on.doc")
                })
                .padding()
            }
        }
        .task {
            if DataScannerViewController.isSupported && DataScannerViewController.isAvailable {
                startScanning.toggle()
            }
        }
    }
    
    func copyToClipboard() {
        pasteboard.string = self.scanText
        
        self.buttonText = "Copied!"
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.buttonText = "Copy"
        }
    }
}

// Comment this code for Xcode 15 above
#Preview {
    LiveTextView()
}

// Uncomment this code for Xcode 14 below
// Xcode 14
//struct LiveTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        LiveTextView()
//    }
//}

