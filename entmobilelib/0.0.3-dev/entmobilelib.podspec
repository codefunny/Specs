Pod::Spec.new do |s|
  s.name         = 'entmobilelib'
  s.version      = '0.0.3-dev'
  s.summary      = 'entmobilelib'
  s.homepage     = 'http://www.yy.com/'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2015 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
    s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/entmobilelib/entmobilelib-ios_dev_5.0_feature/20160121-38-r358354//entmobilelib.zip" }
  s.platform     = :ios, '7.0'
    s.ios.deployment_target = '7.0'
    s.requires_arc = true
    s.resources = 'resource/xib/*.xib','resource/storyboard/*.storyboard','resource/*.xcassets','resource/strings/**/*.strings','resource/plist/*.plist','resource/bundle/*.bundle','resource/html/*.html','resource/js/*.js','resource/js/*.txt','resource/picture/*.png','resource/picture/*.gif','resource/other/*.caf','resource/other/*.conf','resource/other/*.dat','resource/other/*.key','resource/other/*.mp3','resource/other/*.xml'
    s.source_files = 'include/**/*.h'
    s.preserve_paths = 'libs/*.a'
  s.library = 'yymobilesdk'
    s.libraries = 'bz2','iconv','xml2.2','stdc++','stdc++.6.0.9','z.1.2.5','icucore','c++','sqlite3','z'
    s.frameworks = 'CoreMotion','CoreTelephony', 'SystemConfiguration','VideoToolbox','AdSupport','Security','QuartzCore','MobileCoreServices','AVFoundation','MediaPlayer','ImageIO','CoreMedia','CoreGraphics','UIKit','Foundation'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/entmobilelib/libs"','OTHER_LDFLAGS' => '-l"yymobilesdk"'}
end
