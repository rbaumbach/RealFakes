Pod::Spec.new do |s|
  s.name                  = 'RealFakes'
  s.version               = '0.0.4'
  s.summary               = 'A Repo that contains "Real Fake" objects that can be used for testing iOS applications.'
  s.homepage              = 'https://github.com/rbaumbach/RealFakes'
  s.license               = { :type => 'MIT', :file => 'MIT.LICENSE' }
  s.author                = { 'Ryan Baumbach' => 'rbaumbach.github@gmail.com' }
  s.source                = { :git => 'https://github.com/rbaumbach/RealFakes.git', :tag => s.version.to_s }
  s.requires_arc          = true
  s.platform              = :ios
  s.ios.deployment_target = '7.0'
  s.source_files          = 'RealFakes/Source/*.{h,m}'

  s.dependency 'AFNetworking', '~> 2.0'
  s.dependency 'SimpleOAuth2', '~> 0.0.3'
end
