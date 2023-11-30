import UIKit
import WebKit

//MARK: - Class ViewController

final class ViewController: UIViewController {

    
//MARK: - Properties
    
    private let webView = WKWebView()
    private let openButton = UIButton()
    private let blurEffectView = UIVisualEffectView()
    private let visualEffect = UIBlurEffect(style: .dark)

    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(webView)
        view.addSubview(openButton)
        view.addSubview(blurEffectView)
        
        constraintes()
        configureUI()
    }
    
    
//MARK: - Constraintes
    
    private func constraintes() {
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        webView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
        
        openButton.translatesAutoresizingMaskIntoConstraints = false
        openButton.topAnchor.constraint(equalTo: webView.bottomAnchor, constant: 30).isActive = true
        openButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        openButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        openButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        blurEffectView.translatesAutoresizingMaskIntoConstraints = false
        blurEffectView.frame = view.frame
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
        openButton.addTarget(self, action: #selector(tapOpen), for: .touchUpInside)
        
        blurEffectView.effect = visualEffect
        blurEffectView.alpha = 0
    }

    
    
//MARK: - Actions
    
    @objc func tapOpen() {
        
        self.blurEffectView.alpha = 1
        
        let actionSheet = UIAlertController(title: "Hello!", message: "You can coose the caarton", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Фиксики", style: .default, handler: { _ in
            guard let url = URL(string: "https://www.youtube.com/watch?v=EhZSJYtViHU") else {return}
            self.webView.load(URLRequest(url: url))
            UIView.animate(withDuration: 1.5) {
                self.blurEffectView.alpha = 0
            }
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Маша и Медведь", style: .default, handler: { _ in
            guard let url = URL(string: "https://www.youtube.com/watch?v=Ht8CYMzT8sw") else {return}
            self.webView.load(URLRequest(url: url))
            UIView.animate(withDuration: 1.5) {
                self.blurEffectView.alpha = 0
            }
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Малышарики", style: .default, handler: { _ in
            guard let url = URL(string: "https://www.youtube.com/watch?v=4WVOjhLcCX0") else {return}
            self.webView.load(URLRequest(url: url))
            UIView.animate(withDuration: 1.5) {
                self.blurEffectView.alpha = 0
            }
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            UIView.animate(withDuration: 0.5) {
                self.blurEffectView.alpha = 0
            }
        }))
        
        present(actionSheet, animated: true)
        
    }

}

