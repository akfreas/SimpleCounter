import Foundation
import UIKit
import UICircularProgressRing

public class CounterViewController: UIViewController {
    
    @IBOutlet internal var counterButton: UIButton?
    @IBOutlet internal var progressRing: UICircularProgressRing?
    @IBOutlet internal var increaseGoalButton: UIButton?
    @IBOutlet internal var decreaseGoalButton: UIButton?
    @IBOutlet internal var goalLabel: UILabel?
    @IBOutlet internal var counterLabel: UILabel?

    
    private var currentCount: Int = 0
    private var currentGoal: Int = 5
    
    public init() {
        super.init(nibName: "CounterViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        updateGoalLabel()
        updateCounterLabel()
        configureProgressRing()
    }
    
    @IBAction func counterButtonTapped() {
        currentCount += 1
        updateCounterLabel()
        updateProgressRing()
    }
    
    @IBAction internal func increaseGoalButtonTapped() {
        increaseGoalValue()
    }
    
    @IBAction internal func decreaseGoalButtonTapped() {
        decreaseGoalValue()
    }
    
    internal func increaseGoalValue() {
        currentGoal += 1
        updateGoalLabel()
        updateProgressRing()
    }
    
    internal func decreaseGoalValue() {
        currentGoal -= 1
        updateGoalLabel()
        updateProgressRing()
    }
    
    private func updateCounterLabel() {
        counterLabel?.text = String(describing: currentCount)
    }
    
    private func updateGoalLabel() {
        goalLabel?.text = "Target count: \(String(describing: currentGoal))"
    }
    
    private func configureProgressRing() {
        let valueFormatter = UICircularProgressRingFormatter(valueIndicator: "%", rightToLeft: false, showFloatingPoint: false, decimalPlaces: 0)
        progressRing?.maxValue = 100
        progressRing?.valueFormatter = valueFormatter
        progressRing?.font = UIFont(descriptor: UIFontDescriptor(name: "Futura", size: 35.0), size: 35.0)
    }
    
    private func updateProgressRing() {
        guard currentGoal > 0 && currentCount > 0 else {
            return
        }
        let progress = CGFloat(CGFloat(currentCount) / CGFloat(currentGoal))
        
        let (_, remainder): (CGFloat, CGFloat) = modf(progress)
        let rounded = (remainder * 100).rounded()

        if remainder == 0 {
            progressRing?.startProgress(to: 100, duration: 0.2)
        } else {
            progressRing?.startProgress(to: rounded, duration: 0.2)
        }
    }
    
    
    
}
