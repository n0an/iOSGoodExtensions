extension UIStoryboard {
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: MAIN_STORYBOARD, bundle: Bundle.main)
    }

    class func leftViewController() -> LeftSidePanelVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: VC_LEFT_PANEL) as? LeftSidePanelVC
    }

    class func homeVC() -> HomeVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: VC_HOME) as? HomeVC
    }

    class func loginVC() -> LoginVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: VC_LOGIN) as? LoginVC
    }

    class func pickupVC() -> PickupVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: VC_PICKUP) as? PickupVC
    }
}

// TO USE:
// let vc = UIStoryboard.homeVC()
