import Foundation
import UIKit

public class ViewController2: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        let label: UILabel = UILabel()
        label.text = "页面2"
        label.textColor = .white
        label.backgroundColor = .red
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        view.addSubview(label)
    }
}
