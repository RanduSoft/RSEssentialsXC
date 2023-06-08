//
//  RSExtension Designables
//
//  Created by Radu Ursache - RanduSoft
//  Version: 1.0.1
//

import UIKit
import RSEssentials

public extension UIBarButtonItem {
    /// The localizable key for the title of the bar button item.
    @IBInspectable var localizableKey: String {
        set {
            title = newValue.localized()
        }
        get {
            return self.title ?? ""
        }
    }
}

public extension UIButton {
    /// The localizable key for the title of the button.
    @IBInspectable var localizableKey: String {
        set {
            setTitle(newValue.localized(), for: .normal)
        }
        get {
            return self.titleLabel?.text ?? ""
        }
    }
}

public extension UILabel {
    /// The localizable key for the text of the label.
    @IBInspectable var localizableKey: String {
        set {
            text = newValue.localized()
        }
        get {
            return self.text!
        }
    }
}

public extension UITextField {
    /// A flag indicating whether the text field should have a done accessory view.
    @IBInspectable var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set(hasDone) {
            if hasDone {
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    /// The localizable key for the placeholder text of the text field.
    @IBInspectable var localizableKey: String {
        set {
            placeholder = newValue.localized()
        }
        get {
            return self.placeholder ?? ""
        }
    }
}

public extension UITextView {
    /// A flag indicating whether the text view should have a done accessory view.
    @IBInspectable var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set(hasDone) {
            if hasDone {
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    /// The placeholder text of the text view.
    @IBInspectable var placeholder: String {
        get {
            return placeholderLabel.text ?? ""
        }
        set {
            let placeholderLabel = self.placeholderLabel
            if let validLocalizedPlaceholder = newValue.localizedIfValid() {
                placeholderLabel.text = validLocalizedPlaceholder
            } else {
                placeholderLabel.text = newValue
            }
            placeholderLabel.numberOfLines = 0
            let width = frame.width - textContainer.lineFragmentPadding * 2
            let size = placeholderLabel.sizeThatFits(CGSize(width: width, height: .greatestFiniteMagnitude))
            placeholderLabel.frame.size.height = size.height
            placeholderLabel.frame.size.width = width
            placeholderLabel.frame.origin = CGPoint(x: textContainer.lineFragmentPadding, y: textContainerInset.top)
            
            textStorage.delegate = self
            
            setNeedsLayout()
        }
    }
    
    /// The color of the placeholder text in the text view.
    @IBInspectable var placeholderColor: UIColor {
        get {
            return placeholderLabel.textColor
        }
        set {
            placeholderLabel.textColor = newValue
        }
    }
}

public extension UIView {
    /// The corner radius of the view.
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
