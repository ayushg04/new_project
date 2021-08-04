import UIKit
class SignUpView: UIView {
    // Outlets
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var mailID: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var Login: UIButton!
    @IBOutlet weak var SignupBtn: UIButton!
    @IBOutlet weak var submit: UIButton!
    var SignUpViewInstance: SignUpView? = nil
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
        descLabel.text = "Do you have an account:-"
        SignupBtn.isHidden = true
        container.frame = self.bounds
        Login.layer.borderWidth = 3
        Login.layer.borderColor = UIColor.green.cgColor
        SignupBtn.layer.borderWidth = 3
        SignupBtn.layer.borderColor = UIColor.green.cgColor
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
    @IBAction func signupClicked(_ sender: Any) {
        print("Sign up clicked")
        heading.text = "Sign Up"
        nameText.isHidden = false
        confirmPass.isHidden = false
        descLabel.text = "Do you have an account:-"
        descLabel.isHidden = false
        Login.isHidden = false
        SignupBtn.isHidden = true
        SignUpViewInstance?.isHidden = false
    }
    @IBAction func loginclicked(_ sender: UIButton) {
        print("Login clicked")
        heading.text = "Login"
        descLabel.text = "Already have an account:-"
        nameText.isHidden = true
        confirmPass.isHidden = true
        descLabel.isHidden = false
        SignupBtn.isHidden = false
        Login.isHidden = true
        SignUpViewInstance?.isHidden = false
    }
    @IBAction func submitClicked(_ sender: UIButton){
        print("Submit clicked")
    }
}
