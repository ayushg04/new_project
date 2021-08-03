import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var mainView: SignUpView!
    var new : SignUpView?
    override func viewDidLoad() {
        super.viewDidLoad()
        new?.container.isHidden = false
        print("presenting")
    }
}

