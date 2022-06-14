Pod::Spec.new do |s|
s.name             = 'MIStepBar'
s.version          = '1.0.0'
s.summary          = 'Step Bar only used for iOS'
s.description      = <<-DESC
This CocoaPods library helps you to add Step bar in app and makes your app look fantastic!
DESC

s.homepage         = 'https://github.com/PiyushSelarka/MIStepBar'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { "PiyushSelarka" => "piyushselarka.mi@gmail.com" }
s.source           = { :git => 'https://github.com/PiyushSelarka/MIStepBar.git', :tag => s.version.to_s }
s.platform     	  = :ios, '13.0'
s.swift_version = '5.0'
s.ios.deployment_target = '13.0'
s.source_files  = "MIStepBar/*"
end