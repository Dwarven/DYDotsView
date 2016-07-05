Pod::Spec.new do |s|

  s.name                  = 'DYDotsView'
  s.version               = '0.0.2'
  s.summary               = 'A simple view that show pulsing dots.'
  s.homepage              = 'https://github.com/Dwarven/DYDotsView'
  s.ios.deployment_target = '7.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Dwarven' => 'prison.yang@gmail.com' }
  s.social_media_url      = "https://twitter.com/DwarvenYang"
  s.source                = { :git => 'https://github.com/Dwarven/DYDotsView.git', :tag => s.version }
  s.source_files          = 'Objective-C/DYDotsView/*.{h,m}'

end
