# QR Code Generator

A simple and elegant iOS app built with SwiftUI that generates QR codes from text input.

## Features

- **Text to QR Code**: Convert any text input into a QR code
- **Real-time Generation**: QR codes are generated instantly as you type
- **High Quality Output**: QR codes are scaled for optimal clarity and scanning
- **Clean UI**: Modern SwiftUI interface with intuitive design
- **Preview Support**: Built-in SwiftUI preview for development

## Screenshots

The app features a clean interface with:
- Text input field for entering content
- Generate button that activates when text is entered
- QR code display area with placeholder when no code is generated
- Responsive design that works across different iOS devices

## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.3+

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/QRCodeGenerator.git
   ```

2. Open the project in Xcode:
   ```bash
   cd QRCodeGenerator
   open QRCodeGenerator.xcodeproj
   ```

3. Build and run the project on your iOS device or simulator

## Usage

1. Launch the app
2. Enter any text in the input field
3. Tap "Generate QR Code" 
4. The QR code will appear below, ready to be scanned

## Technical Details

The app uses:
- **SwiftUI** for the user interface
- **CoreImage** framework for QR code generation
- **CIFilter.qrCodeGenerator()** for creating QR codes
- **CGAffineTransform** for scaling QR codes to high resolution

## Code Structure

- `QRCodeGeneratorApp.swift`: Main app entry point
- `ContentView.swift`: Primary view containing the QR code generation logic
- `Assets.xcassets/`: App icons and visual assets

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).

## Author

Created by Ishan Malviya

---

*Built with ❤️ using SwiftUI*
