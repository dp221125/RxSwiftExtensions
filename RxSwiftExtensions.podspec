Pod::Spec.new do |s|
  s.name             = "RxSwiftExtensions"
  s.version          = "1.2.3"
  s.summary          = "Frequently used extensoins in RxSwift"
  s.homepage         = "https://github.com/tokijh/RxSwiftExtensions"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "tokijh" => "tokijh@naver.com" }
  s.source           = { :git => "https://github.com/tokijh/RxSwiftExtensions.git",
                         :tag => s.version.to_s }
  s.swift_version = '5'
  s.source_files = "RxSwiftExtensions/**/*.swift"
  s.frameworks   = "Foundation"
  s.dependency "RxSwift", "~> 5"
  s.dependency "RxCocoa", "~> 5"
  s.dependency "RxViewController"

  s.ios.deployment_target = "8.0"
end
