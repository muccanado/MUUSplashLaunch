
Pod::Spec.new do |s|

s.name         = "MUUSplashLaunch"
s.version      = "1.0.1"
s.summary      = "A launch screen like Twitter App"
s.description  = "a simple framework that implements some functions to recreate the effect present in the launch screen of the Twitter app"
s.homepage     = "http://muccanado.com"



s.license      = "MIT"

s.author             = { "muccanado" => "muccanado@gmail.com" }

s.platform     = :ios, "12.1"

s.source       = { :git => "https://github.com/muccanado/MUUSplashLaunch.git", :tag => "1.0.1" }

s.source_files = "MUUSplashLaunch"
s.exclude_files = "Classes/Exclude"

s.swift_version = "4.2"

end

