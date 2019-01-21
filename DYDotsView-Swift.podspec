Pod::Spec.new do |s|

  s.name                  = 'DYDotsView-Swift'
  s.version               = '1.0.1'
  s.summary               = 'A simple view that show pulsing dots.'
  s.homepage              = 'https://github.com/Dwarven/DYDotsView'
  s.ios.deployment_target = '9.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Dwarven' => 'prison.yang@gmail.com' }
  s.social_media_url      = "https://twitter.com/DwarvenYang"
  s.source                = { :git => 'https://github.com/Dwarven/DYDotsView.git', :tag => s.version }
  s.source_files          = 'Swift/DYDotsView/*.swift'
  s.swift_version         = '4.0'

end
