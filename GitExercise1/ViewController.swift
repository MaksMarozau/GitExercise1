import UIKit
import WebKit

//MARK: - Class ViewController

final class ViewController: UIViewController {

    
//MARK: - Properties
    
    private let webView = WKWebView()
    private let openButton = UIButton()

    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(webView)
        view.addSubview(openButton)
        
        constraintes()
        configureUI()
    }
    
    
//MARK: - Constraintes
    
    private func constraintes() {
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        webView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        openButton.translatesAutoresizingMaskIntoConstraints = false
        openButton.topAnchor.constraint(equalTo: webView.bottomAnchor, constant: 30).isActive = true
        openButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        openButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        openButton.widthAnchor.constraint(equalToConstant: 120).isActive = true

    }
    
    
    
//MARK: - ConfigureUI
    
    private func configureUI() {
        
        webView.layer.borderWidth = 2
        webView.layer.borderColor = UIColor.black.cgColor
        
        openButton.setTitle("OPEN", for: .normal)
        openButton.setTitleColor(.black, for: .normal)
        openButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        openButton.backgroundColor = .white
        openButton.layer.borderColor = UIColor.black.cgColor
        openButton.layer.borderWidth = 2
        
    }


}

