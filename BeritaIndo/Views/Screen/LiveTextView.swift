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
            
            Text(scanText)
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                .background(in: Rectangle())
                .backgroundStyle(Color(uiColor: .systemGray6))
        }
        .task {
            if DataScannerViewController.isSupported && DataScannerViewController.isAvailable {
                startScanning.toggle()
            }
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

