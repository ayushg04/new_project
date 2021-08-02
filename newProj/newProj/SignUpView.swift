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
        Login.layer.borderWidth = 3
        Login.layer.borderColor = UIColor.green.cgColor
        submit.layer.borderWidth = 3
        submit.layer.borderColor = UIColor.green.cgColor
        nameText.layer.borderWidth = 3
        nameText.layer.borderColor = UIColor.green.cgColor
        mailID.layer.borderWidth = 3
        mailID.layer.borderColor = UIColor.green.cgColor
        pass.layer.borderWidth = 3
        pass.layer.borderColor = UIColor.green.cgColor
        confirmPass.layer.borderWidth = 3
        confirmPass.layer.borderColor = UIColor.green.cgColor
    }
    @IBAction func loginclicked(_ sender: UIButton) {
        print("Login clicked")
        
    }
    @IBAction func submitClicked(_ sender: UIButton){
        print("Submit clicked")
    }
}
