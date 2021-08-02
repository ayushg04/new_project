import UIKit
class SignUpView: UIView {

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var mailID: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var Login: UIButton!
    @IBOutlet weak var submit: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)
        addSubview(container)
        container.frame = self.bounds
//        Login.layer.borderwidth = 2
//        login.layer.borderColor = UIColor.green.cgColor
//        container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    @IBAction func loginclicked(_ sender: UIButton) {
        print("Login clicked")
        
    }
    @IBAction func submitClicked(_ sender: UIButton){
        print("Submit clicked")
    }
}
