import Foundation
import UIKit
import UICircularProgressRing

public class CounterViewController: UIViewController {
    
    @IBOutlet internal var counterButton: UIButton?
    @IBOutlet internal var counterLabel: UILabel?
    
    private var currentCount: Int = 0
    
    public init() {
        super.init(nibName: "CounterViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        updateCounterLabel()
    }
    
    @IBAction func counterButtonTapped() {
        currentCount += 1
        updateCounterLabel()
    }
    
    private func updateCounterLabel() {
        counterLabel?.text = String(describing: currentCount)
    }
    
}
