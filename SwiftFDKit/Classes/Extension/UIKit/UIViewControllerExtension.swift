//
//  UIViewControllerExtension.swift
//  FDFoundation
//
//  Created by Yongpeng Zhu 朱永鹏 on 2018/3/25.
//  Copyright © 2018年 Yongpeng Zhu 朱永鹏. All rights reserved.
//

// MARK: - Properties
public extension UIViewController {
    
    /// FDFoundation: Check if ViewController is onscreen and not hidden.
    public var fd_isVisible: Bool {
        // http://stackoverflow.com/questions/2777438/how-to-tell-if-uiviewcontrollers-view-is-visible
        return self.isViewLoaded && view.window != nil
    }
    
}

// MARK: - Methods
public extension UIViewController {
    
    /// FDFoundation: Find the most top controller.
    public class func fd_topController(_ base: UIViewController? = UIWindow.fd_currentWindow?.rootViewController) -> UIViewController?
    {
        if let nav = base as? UINavigationController
        {
            let top = fd_topController(nav.visibleViewController)
            return top
        }
        
        if let tab = base as? UITabBarController
        {
            if let selected = tab.selectedViewController
            {
                let top = fd_topController(selected)
                return top
            }
        }
        
        if let presented = base?.presentedViewController
        {
            let top = fd_topController(presented)
            return top
        }
        return base
    }
    
    /// FDFoundation: Assign as listener to notification.
    ///
    /// - Parameters:
    ///   - name: notification name.
    ///   - selector: selector to run with notified.
    public func fd_addNotificationObserver(name: Notification.Name, selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: name, object: nil)
    }
    
    /// FDFoundation: Unassign as listener to notification.
    ///
    /// - Parameter name: notification name.
    public func fd_removeNotificationObserver(name: Notification.Name) {
        NotificationCenter.default.removeObserver(self, name: name, object: nil)
    }
    
    /// FDFoundation: Unassign as listener from all notifications.
    public func fd_removeNotificationsObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    /// FDFoundation: Helper method to display an alert on any UIViewController subclass. Uses UIAlertController to show an alert
    ///
    /// - Parameters:
    ///   - title: title of the alert
    ///   - message: message/body of the alert
    ///   - buttonTitles: (Optional)list of button titles for the alert. Default button i.e "OK" will be shown if this paramter is nil
    ///   - highlightedButtonIndex: (Optional) index of the button from buttonTitles that should be highlighted. If this parameter is nil no button will be highlighted
    ///   - completion: (Optional) completion block to be invoked when any one of the buttons is tapped. It passes the index of the tapped button as an argument
    /// - Returns: UIAlertController object (discardable).
    @discardableResult public func fd_showAlert(title: String?, message: String?, buttonTitles: [String]? = nil, highlightedButtonIndex: Int? = nil, completion: ((Int) -> Void)? = nil) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        var allButtons = buttonTitles ?? [String]()
        if allButtons.count == 0 {
            allButtons.append("OK")
        }
        
        for index in 0..<allButtons.count {
            let buttonTitle = allButtons[index]
            let action = UIAlertAction(title: buttonTitle, style: .default, handler: { (_) in
                completion?(index)
            })
            alertController.addAction(action)
            // Check which button to highlight
            if let highlightedButtonIndex = highlightedButtonIndex, index == highlightedButtonIndex {
                if #available(iOS 9.0, *) {
                    alertController.preferredAction = action
                }
            }
        }
        present(alertController, animated: true, completion: nil)
        return alertController
    }
    
    /// find viewController base viewControllerName
    ///
    /// - Parameter name: viewControllerName
    /// - Returns: UIViewController
    public func findViewController(_ name: String) -> UIViewController? {
        var namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        namespace = namespace.replacingOccurrences(of: "-", with: "_")
        if let tabCls = NSClassFromString(namespace + "." + name) as? UITabBarController.Type {
            if let vcIndex = navigationController?.viewControllers.index(where: { $0.isKind(of: tabCls)}) {
                return navigationController?.viewControllers[vcIndex]
            }
            return nil
        }
        if let vcCls = NSClassFromString(namespace + "." + name) as? UIViewController.Type {
            if let vcIndex = navigationController?.viewControllers.index(where: { $0.isKind(of: vcCls)}) {
                return navigationController?.viewControllers[vcIndex]
            }
            return nil
        }
        return nil
    }
}

public extension UIViewController {
    
    // MARK: - leftBarButtonItem
    public func setUpleftBarButtonItem(image: UIImage?,
                                       action: Selector? = nil,
                                       insets: UIEdgeInsets = .zero) {
        
        let button = UIButton(type: .custom)
        if let image = image {
            let buttonSize = CGSize(width: image.size.width/image.scale, height: image.size.height/image.scale)
            button.frame = CGRect(origin: .zero,
                                  size: buttonSize)
            button.imageEdgeInsets = insets
        }
        button.setImage( image, for: .normal)
        if let action = action {
            button.addTarget(self, action: action, for: .touchUpInside)
        }
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    public func setUpRightBarButtonItem(image: UIImage?,
                                       action: Selector? = nil,
                                       insets: UIEdgeInsets = .zero) {
        
        let button = UIButton(type: .custom)
        if let image = image {
            let buttonSize = CGSize(width: image.size.width/image.scale, height: image.size.height/image.scale)
            button.frame = CGRect(origin: .zero,
                                  size: buttonSize)
            button.imageEdgeInsets = insets
        }
        button.setImage( image, for: .normal)
        if let action = action {
            button.addTarget(self, action: action, for: .touchUpInside)
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
    }
    
}
