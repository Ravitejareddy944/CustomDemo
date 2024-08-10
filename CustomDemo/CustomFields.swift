//
//  CustomFields.swift
//  CustomDemo
//
//  Created by Neo on 29/07/24.
//

import Foundation

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    @IBInspectable var leftIcon: UIImage? {
        didSet {
            setLeftIcon(leftIcon)
        }
    }
    
    @IBInspectable var rightIcon: UIImage? {
        didSet {
            setRightIcon(rightIcon)
        }
    }
    
    private func setLeftIcon(_ image: UIImage?) {
        guard let image = image else {
            leftView = nil
            return
        }
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        let padding: CGFloat = 8
        imageView.frame = CGRect(x: 20, y: 0, width: image.size.width + padding, height: self.frame.height)
        leftView = imageView
        leftViewMode = .always
    }
    
    private func setRightIcon(_ image: UIImage?) {
        guard let image = image else {
            rightView = nil
            return
        }
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        let padding: CGFloat = 8
        imageView.frame = CGRect(x: 20, y: 0, width: image.size.width + padding, height: self.frame.height)
        rightView = imageView
        rightViewMode = .always
    }
}

class CustomButtom: UIButton{
        @IBInspectable var borderColor: UIColor? {
            didSet {
                updateBorder()
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                updateBorder()
            }
        }
        
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                updateCornerRadius()
            }
        }
        
        @IBInspectable var buttonBackgroundColor: UIColor? {
            didSet {
                self.backgroundColor = buttonBackgroundColor
            }
        }
        
        @IBInspectable var titleColor: UIColor? {
            didSet {
                self.setTitleColor(titleColor, for: .normal)
            }
        }

        // MARK: - Initialization

        override init(frame: CGRect) {
            super.init(frame: frame)
            setup()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setup()
        }
        
        private func setup() {
            // Set default values or styles if needed
            updateBorder()
            updateCornerRadius()
        }
        
        // MARK: - Customization

        

        private func updateBorder() {
            layer.borderColor = borderColor?.cgColor
            layer.borderWidth = borderWidth
        }

        private func updateCornerRadius() {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
        
        // MARK: - Layout Adjustments




}
