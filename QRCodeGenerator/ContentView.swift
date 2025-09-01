//
//  ContentView.swift
//  QRCodeGenerator
//
//  Created by Ishan Malviya on 01/09/25.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    @State private var inputText: String = ""
    @State private var qrCodeImage: UIImage?
    
    var body: some View {
        VStack(spacing: 30) {
            Text("QR Code Generator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            VStack(spacing: 20) {
                TextField("Enter text to generate QR code", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: generateQRCode) {
                    Text("Generate QR Code")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(inputText.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(10)
                }
                .disabled(inputText.isEmpty)
                .padding(.horizontal)
            }
            
            if let qrImage = qrCodeImage {
                VStack {
                    Text("Generated QR Code:")
                        .font(.headline)
                        .padding(.top)
                    
                    Image(uiImage: qrImage)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            } else {
                VStack {
                    Image(systemName: "qrcode")
                        .font(.system(size: 100))
                        .foregroundColor(.gray.opacity(0.3))
                    Text("QR Code will appear here")
                        .foregroundColor(.gray)
                        .font(.caption)
                }
                .frame(height: 200)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func generateQRCode() {
        guard !inputText.isEmpty else { return }
        
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        
        filter.message = Data(inputText.utf8)
        
        if let outputImage = filter.outputImage {
            // Scale up the QR code for better quality
            let transform = CGAffineTransform(scaleX: 10, y: 10)
            let scaledImage = outputImage.transformed(by: transform)
            
            if let cgImage = context.createCGImage(scaledImage, from: scaledImage.extent) {
                qrCodeImage = UIImage(cgImage: cgImage)
            }
        }
    }
}

#Preview {
    ContentView()
}
