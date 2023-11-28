import UIKit
import WebKit

//MARK: - Class ViewController

final class ViewController: UIViewController {

    
//MARK: - Properties
    
    private let webView = WKWebView()

    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(webView)
        
        constraintes()
    }
    
    
//MARK: - Constraintes
    
    private func constraintes() {
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        webView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }


}

