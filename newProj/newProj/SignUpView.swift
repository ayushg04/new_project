import UIKit
import FirebaseAuth
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
    var newView: secondView?
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
        pass.isSecureTextEntry = true
        confirmPass.isSecureTextEntry = true
    }
    func SignUpPage() {
        heading.text = "Sign Up"
        nameText.isHidden = false
        confirmPass.isHidden = false
        descLabel.text = "Do you have an account:-"
        descLabel.isHidden = false
        Login.isHidden = false
        SignupBtn.isHidden = true
        SignUpViewInstance?.isHidden = false
    }
    func LoginPage() {
        heading.text = "Login"
        descLabel.text = "Already have an account:-"
        nameText.isHidden = true
        confirmPass.isHidden = true
        descLabel.isHidden = false
        SignupBtn.isHidden = false
        Login.isHidden = true
        SignUpViewInstance?.isHidden = false
    }
    @IBAction func signupClicked(_ sender: Any) {
        print("Sign up clicked")
        SignUpPage()
    }
    @IBAction func loginclicked(_ sender: UIButton) {
        print("Login clicked")
        LoginPage()
    }
    @IBAction func submitClicked(_ sender: UIButton){
        print("Submit clicked")
        validateField()
    }
    func validateField() {
        guard let mail = mailID.text, !mail.isEmpty,
              let passwrd  = pass.text, !passwrd.isEmpty else {
            print("Fields are empty")
            return
        }
        
        //get auth instance
        FirebaseAuth.Auth.auth().signIn(withEmail: mail, password: passwrd, completion: { [weak self] results, error in
            guard let strongself = self else {
                return
            }
            guard error == nil else{
                //show account creation
                strongself.accountCreation(email: mail, password: passwrd)
                return
            }
            print("You have successfully signed in")
            //next page will push
            self!.newView?.container.isHidden = false
        })
    }
    func accountCreation(email: String, password: String) {
        print("IN the account creation page")
        SignUpPage()
        FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password, completion: { [weak self] result,error in
            guard error == nil else{
                //show account creation
                print("Error in account creation")
                return
            }
            print("You have successfully signed in")
            //next page will push
//            self?.newView.container.isHidden = false
            self!.newView?.container.isHidden = false
        })
    }
}
