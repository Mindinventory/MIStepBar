//
//  StepBar.swift
//  MIStepBar
//
//  Created by mac-00017 on 31/05/22.
//

import Foundation
import UIKit

public class StepBar: UIStackView {
    
    // MARK: IBInspectable
    
    @IBInspectable var stepCount: Int = 5
    @IBInspectable var currentStep: Int = 1
    @IBInspectable var Animation: Bool = false
    @IBInspectable var vertical: Bool = true
    @IBInspectable var ShowTitle: Bool = true
    @IBInspectable var ShowSubTitle: Bool = false
    @IBInspectable var progressTintColor: UIColor = .darkGray
    @IBInspectable var stepTitleColor: UIColor = .gray
    @IBInspectable var stepSubTitleColor: UIColor = .gray
    @IBInspectable var stepSelectedTitleColor: UIColor = .black
    @IBInspectable var PulseColor: UIColor = .lightGray
    @IBInspectable var stepColor: UIColor = .gray
    @IBInspectable var CircleSize: CGFloat = 25
    @IBInspectable var SelectedCircleSize: CGFloat = 25
    
    
    @objc public dynamic var currentStepValue: Int = 0
    
    public var stepTitles = [String]()
    public var stepSubTitles = [String]()
    public var stepSelectedImages = [String]()
    public var progress = UIProgressView()
    public var stepButtonPoint = UIButton()
    public var label = UILabel()
    public var labelSub = UILabel()
    let currStepObservingContext = UnsafeMutableRawPointer(bitPattern: 1)
    
    // MARK: draw
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        currentStepValue = currentStep
        addObserver(self, forKeyPath: #keyPath(currentStepValue), options: [.new, .old], context: currStepObservingContext)
        
        if (vertical) {
            progress.frame = CGRect(x: -(self.frame.height/2) + (self.frame.width/2) + (CircleSize/2), y: self.frame.height/2 , width: self.frame.height - CircleSize, height:0)
        } else {
            progress.frame = CGRect(x: 0, y: (self.frame.height/2) - 2, width: self.frame.width - CircleSize, height:0)
        }
        
        self.backgroundColor = .clear
        progress.tintColor = progressTintColor
        drawSteps()
    }
    
    
    // MARK: UI
    func drawSteps()
    {
        if (vertical) {
            progress.transform = CGAffineTransform(rotationAngle: .pi/2)
        }
        
        if (stepCount <= 1) {
            return
        }
        addSubview(progress)
        
        let div = Float(100.0 / Float(stepCount - 1))
        let final = Float(currentStepValue - 1) * (div / 100)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            UIView.animate(withDuration: 2.0) {
                self.progress.setProgress(final, animated: true)
            }
        }
        
        for i in 0...stepCount-1 {
            
            var stepButton = UIButton()
            var label = UILabel()
            var labelSub = UILabel()
            
            if (vertical) {
                let btnY = (i * Int(progress.frame.height)) / (stepCount - 1)
                stepButton = UIButton(frame: CGRect(x: (self.frame.width/2) - (CircleSize/2), y: CGFloat(btnY), width: CircleSize, height: CircleSize))
                
                label = UILabel(frame: CGRect(x: CGFloat(stepButton.center.x + (CircleSize/2) + 8), y: CGFloat(Double(btnY) - 12.5) + (CircleSize/2), width: (UIScreen.main.bounds.width - self.frame.width - self.frame.origin.x - 22), height: 25.0))
                labelSub = UILabel(frame: CGRect(x: CGFloat(stepButton.center.x + (CircleSize/2) + 8), y: CGFloat(CGFloat(btnY) + (label.frame.height - 5.0)), width: (UIScreen.main.bounds.width - self.frame.width - self.frame.origin.x - 22), height: 25.0))
            } else {
                stepButton = UIButton(frame: CGRect(x:  i * Int(progress.frame.width) / (stepCount - 1), y: Int(self.frame.height/2) - Int(CircleSize/2), width: Int(CircleSize), height: Int(CircleSize)))
                
                let lblXp = (i * Int(progress.frame.width)) / (stepCount - 1)
                let lblWidth = (self.frame.width + CircleSize)/CGFloat(stepCount)
                let lblX : CGFloat = CGFloat(lblXp) - (lblWidth/2) + (CircleSize/2)
                
                label = UILabel(frame: CGRect(x: CGFloat(lblX) , y: CGFloat(stepButton.center.y + (CircleSize/2)), width: lblWidth, height: 30))
                labelSub = UILabel(frame: CGRect(x: CGFloat(lblX) , y: CGFloat((stepButton.center.y + label.frame.height - 5) + (CircleSize/2)), width: lblWidth, height: 20))
            }
            stepButton.backgroundColor = .clear
            
            if (stepTitles.count > 0 && stepTitles.count == stepCount) {
                if (stepTitles.count <= stepCount && ShowTitle) {
                    label.textColor = stepTitleColor
                    label.text = stepTitles[i]
                    label.numberOfLines = vertical ? 1 : 0
                    label.textAlignment = vertical ? .left : .center
                    label.adjustsFontSizeToFitWidth = true
                    label.minimumScaleFactor = 0.7
                    label.font = UIFont.systemFont(ofSize: 11)
                }
            }
            if (stepSubTitles.count > 0 && stepSubTitles.count == stepCount) {
                if (stepSubTitles.count <= stepCount && ShowSubTitle) {
                    labelSub.textColor = stepSubTitleColor
                    labelSub.text = stepSubTitles[i]
                    labelSub.numberOfLines = vertical ? 1 : 0
                    labelSub.textAlignment = vertical ? .left : .center
                    labelSub.adjustsFontSizeToFitWidth = true
                    labelSub.minimumScaleFactor = 0.7
                    labelSub.font = UIFont.systemFont(ofSize: 10)
                }
            }
            
            stepButton.layer.cornerRadius = stepButton.frame.height / 2
            stepButton.backgroundColor = stepColor
            stepButton.layer.borderWidth = 6
            stepButton.layer.borderColor = UIColor(red: 34/255, green: 34/255, blue: 35/255, alpha: 1.00).cgColor
            
            let size = CircleSize / 2.5
            
            if i+1 == currStep {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    
                    let stepSize = self.SelectedCircleSize
                    
                    if (self.vertical) {
                        let y = (i * Int(self.progress.frame.height) / (self.stepCount - 1))
                        stepButton.frame = CGRect(x: (self.frame.width/2) - (stepSize/2), y: CGFloat(y) - CGFloat(stepSize/4), width: stepSize, height: stepSize)
                        
                        label.frame.origin.y = (stepButton.frame.origin.y - 12.5) + (stepSize/2)
                        label.frame.origin.x = label.frame.origin.x + CGFloat(stepSize/4.5)
                        labelSub.frame.origin.x = labelSub.frame.origin.x + CGFloat(stepSize/4.5)
                        
                    } else {
                        let x = (i * Int(self.progress.frame.width) / (self.stepCount - 1))
                        stepButton.frame = CGRect(x: CGFloat(x) - CGFloat(stepSize/4), y: CGFloat(self.frame.height/2) - CGFloat(stepSize/2), width: stepSize, height: stepSize)
                        label.frame.origin.y = label.frame.origin.y + 10
                        labelSub.frame.origin.y = labelSub.frame.origin.y + 12
                    }
                    stepButton.layer.cornerRadius = stepSize / 2
                    stepButton.backgroundColor = self.progressTintColor
                    
                    
                    let imageLayer = CALayer()
                    if (self.stepSelectedImages.count > 0 && self.stepSelectedImages.count == self.stepCount), let img = UIImage.init(named:self.stepSelectedImages[i]) {
                        imageLayer.frame = stepButton.bounds.inset(by: UIEdgeInsets.init(top: size, left: size, bottom: size, right: size))
                        imageLayer.contents = img.cgImage
                        stepButton.layer.addSublayer(imageLayer)
                    }
                    
                    if (self.Animation) {
                        UIView.animate(withDuration: 4.0) { [self] in
                            let pulse = PulseAnimation(numberOfPulse: Float.infinity, radius: stepSize, postion: CGPoint(x: stepSize/2, y: stepSize/2))
                            pulse.animationDuration = 1.0
                            pulse.backgroundColor =  self.PulseColor.cgColor
                            stepButton.layer.insertSublayer(pulse, below: imageLayer)
                        }
                    }
                    label.font = UIFont.boldSystemFont(ofSize: 12)
                    label.textColor = self.stepSelectedTitleColor
                }
            }
            
            else if i+1 < currStep {
                stepButton.backgroundColor = self.progressTintColor
            }
            if (ShowTitle) {
                addSubview(label)
            }
            if (ShowSubTitle) {
                addSubview(labelSub)
            }
            addSubview(stepButton)
        }
    }
    // MARK: Observer
    public override func observeValue(forKeyPath keyPath: String?,of object: Any?, change: [NSKeyValueChangeKey : Any]?,context: UnsafeMutableRawPointer?) {
        guard let observingContext = context, observingContext == currStepObservingContext else {
            super.observeValue(forKeyPath: keyPath,of: object, change: change,context: context)
            return
        }
        guard let change = change else {
            return
        }
        if let _ = change[.oldKey] {
            
        }
        if let _ = change[.newKey]  {
            subviews.forEach({ $0.removeFromSuperview() })
            drawSteps()
        }
    }
    
    deinit {
        removeObserver(self, forKeyPath: #keyPath(currStep))
    }
}

// MARK: Animation
class PulseAnimation: CALayer {

    var animationGroup = CAAnimationGroup()
    var animationDuration: TimeInterval = 1.5
    var radius: CGFloat = 200
    var numebrOfPulse: Float = Float.infinity
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(numberOfPulse: Float = Float.infinity, radius: CGFloat, postion: CGPoint){
        super.init()
        self.backgroundColor = UIColor.black.cgColor
        self.contentsScale = UIScreen.main.scale
        self.opacity = 0
        self.radius = radius
        self.numebrOfPulse = numberOfPulse
        self.position = postion
        
        self.bounds = CGRect(x: 0, y: 0, width: radius*2, height: radius*2)
        self.cornerRadius = radius
        
        DispatchQueue.global(qos: .default).async {
            self.setupAnimationGroup()
            DispatchQueue.main.async {
                self.add(self.animationGroup, forKey: "pulse")
           }
        }
    }
    
    func scaleAnimation() -> CABasicAnimation {
        let scaleAnimaton = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimaton.fromValue = NSNumber(value: 0)
        scaleAnimaton.toValue = NSNumber(value: 1)
        scaleAnimaton.duration = animationDuration
        return scaleAnimaton
    }
    
    func createOpacityAnimation() -> CAKeyframeAnimation {
        let opacityAnimiation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimiation.duration = animationDuration
        opacityAnimiation.values = [0.4,0.8,0]
        opacityAnimiation.keyTimes = [0,0.3,1]
        return opacityAnimiation
    }
    
    func setupAnimationGroup() {
        self.animationGroup.duration = animationDuration
        self.animationGroup.repeatCount = numebrOfPulse
        let defaultCurve = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        self.animationGroup.timingFunction = defaultCurve
        self.animationGroup.animations = [scaleAnimation(),createOpacityAnimation()]
    }
}
