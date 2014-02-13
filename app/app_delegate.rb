class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    @window.makeKeyAndVisible

    # the points we are going to animate to
    @points = [[0, 0], [0, 450], [50, 50], [220, 7], [234, 533]]
    @current_index = 0

    #usual method of adding view to our window
    @view = UIView.alloc.initWithFrame [@points[@current_index], [100, 100]]
    @view.backgroundColor = UIColor.blueColor
    @window.addSubview(@view)

    animate_to_next_point

    # controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    # nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    # alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)

    # other_controller = UIViewController.alloc.initWithNibName(nil, bundle: nil)
    # other_controller.title = "Other"
    # other_controller.view.backgroundColor = UIColor.purpleColor

    # tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    # tab_controller.viewControllers = [alphabet_controller, nav_controller, other_controller]
    # @window.rootViewController = tab_controller

    true
  end

  def animate_to_next_point
    @current_index += 1

    # keep current index in range
    @current_index = @current_index % @points.count

    UIView.animateWithDuration(2,
      animations: lambda {
        @view.frame = [@points[@current_index], [100, 100]]
      },
      completion: lambda { |finished|
        self.animate_to_next_point
      }
    )
  end
end














