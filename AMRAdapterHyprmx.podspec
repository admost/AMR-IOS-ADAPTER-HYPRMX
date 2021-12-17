Pod::Spec.new do |s|
  s.name             = 'AMRAdapterHyprmx'
  s.version          = '6.0.0.2'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'HyprMX adapter for AMR SDK.'
  s.description      = 'AMR HyprMX adapter allows publishers to mediate HyprMX interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-HYPRMX.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_libraries = 'AMRAdapterHyprmx/Libs/libAMRAdapterHyprmx.a'
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'HyprMX', '6.0.0'
end
