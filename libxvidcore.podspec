Pod::Spec.new do |s|
  s.name             = 'libxvidcore'
  s.version          = '0.0.2'
  s.summary          = 'Prebuilt libxvidcore (Xvid) static library for iOS'
  s.description      = 'Vendored libxvidcore.a and xvid.h headers for FFmpeg-based players. Minimum iOS 13.0.'
  s.homepage         = 'https://github.com/PangDuTechnology/libxvidcore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'PangDu' => 'xian312117@gmail.com' }
  s.source           = { :git => 'https://github.com/PangDuTechnology/libxvidcore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.requires_arc = false

  s.source_files        = 'libxvidcore/include/**/*.h'
  s.public_header_files = 'libxvidcore/include/**/*.h'
  s.vendored_libraries  = 'libxvidcore/lib/libxvidcore.a'
  s.preserve_paths      = 'libxvidcore/lib/libxvidcore.a'
end
