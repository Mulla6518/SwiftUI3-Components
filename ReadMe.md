
# SwiftUI3-Components

### A Modern Component Library for SwiftUI 3

SwiftUI3-Components is a collection of reusable, customizable UI components built with **SwiftUI 3**. It helps developers accelerate iOS app development by providing ready-to-use elements that follow Apple’s **Human Interface Guidelines** and leverage SwiftUI’s declarative syntax.

---

## ✅ Features

- **Reusable SwiftUI Components**  
  Buttons, Cards, Chips, Inputs, Navigation elements, and more.

- **Declarative UI Patterns**  
  Built using SwiftUI’s modern APIs for clean and maintainable code.

- **Customizable Design Tokens**  
  Colors, typography, spacing, and corner radii for consistent theming.

- **Previews for Rapid Development**  
  Each component includes SwiftUI previews for instant visualization.

---

## 📦 Installation

Add **SwiftUI3-Components** to your project using **Swift Package Manager**:

1. In Xcode, go to **File → Add Packages…**
2. Enter the repository URL:
```
https://github.com/Mulla6518/SwiftUI3-Components.git
```
3. Select **Add Package** and link it to your app target.

---

## 🛠 Usage Examples

### 1. Primary Button
```swift
import SwiftUI
import SwiftUI3Components

Button("Continue") { }
 .buttonStyle(.primary)
 ```

 ### 2. Glass Button (iOS 16+)
```swift
import SwiftUI
import SwiftUI3Components

Button("Glass Style") { }
    .glassButtonCompat() // Falls back to .ultraThinMaterial on older iOS
 ```

### 3. Card Component
```swift
import SwiftUI
import SwiftUI3Components

Card {
    VStack(alignment: .leading, spacing: 8) {
        Text("SwiftUI 3 Library")
            .font(.title3)
        Text("Reusable components with consistent styling.")
            .foregroundStyle(.secondary)
    }
}
 ```

### 4. Glass Card
```swift
import SwiftUI
import SwiftUI3Components

GlassCard {
    VStack(spacing: 8) {
        Text("Glass Effect")
            .font(.headline)
        Text("Modern design with material backgrounds.")
            .foregroundStyle(.secondary)
    }
}
```

### 5. Chip Component
```swift
import SwiftUI
import SwiftUI3Components

Chip("SwiftUI", variant: .filled, onRemove: {
    print("Chip removed")
})
 ```

### 6. Floating Label TextField
```swift
import SwiftUI
import SwiftUI3Components

@State private var name = ""

FloatingLabelTextField("Name", text: $name)
 ```

✅ Requirements
* iOS 15+
* Xcode 14+
* Swift 5.7+

✅ Depedencies

Dependent on *SwiftUIFlowLayout*
```
https://github.com/globulus/swiftui-flow-layout
````

📖 How It Works
* Design Tokens: Centralized styling for consistency.
* SwiftUI Modifiers: Composable styles for flexibility.
* Previews: Visualize components instantly in Xcode.

🔍 Roadmap
* ✅ Buttons (Primary, Glass)
* ✅ Cards (Standard, Glass)
* ✅ Chips & Tags
* ✅ Floating Label Inputs
* 🔜 Navigation Components
* 🔜 Advanced Animations

🤝 Contributing
Contributions are welcome!
* Fork the repo
* Create a feature branch
* Submit a pull request

📄 License
MIT License. See LICENSE for details.