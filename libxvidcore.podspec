Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "libxvidcore"
  s.version      = "0.0.1"
  s.summary      = "xvidcore."

  # This description is used to generate tags and improve search results.
  s.description  = 'xvidcore for iOS.'
  s.homepage     = "https://github.com/PangDuTechnology/libxvidcore.git"
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "PangDu" => "xian312117@gmail.com" }
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/PangDuTechnology/libxvidcore.git", :tag => s.version.to_s }
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "libxvidcore/include/*.h"
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.header_mappings_dir = "libxvidcore/include"
  s.preserve_paths = "libxvidcore/**/**"
  s.vendored_libraries = "libxvidcore/lib/libxvidcore.a"
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.libraries = ["c", "c++","z","iconv","bz2"]
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.requires_arc = false
   s.static_framework = true
   s.xcconfig = { 'HEADER_SEARCH_PATHS'=> '"$(SDKROOT)/libxvidcore/include/*.h"',

                  'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/libxvidcore/lib"'
  }
end
