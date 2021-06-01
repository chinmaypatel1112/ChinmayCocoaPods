import UIKit

  class ViewPresenter {

      public static func replaceRootView(for viewController: UIViewController,
                                         duration: TimeInterval = 0.5,
                                 options: UIView.AnimationOptions = .transitionCrossDissolve,
                                 completion: ((Bool) -> Void)? = nil) {
          guard let window = UIApplication.shared.keyWindow else {
              return
          }

          guard let rootViewController = window.rootViewController else {
              return
          }

          viewController.view.frame = rootViewController.view.frame

          UIView.transition(with: window, duration: duration, options: options, animations: {
              window.rootViewController = viewController
          }, completion: completion)
      }
  }


