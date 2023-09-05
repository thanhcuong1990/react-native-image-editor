require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-image-editor-next'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, '12.0'

  s.source       = { git: 'https://github.com/thanhcuong1990/react-native-image-editor.git', tag: s.version.to_s }
  s.source_files = 'ios/**/*.{h,m}'

  s.dependency 'React-Core'
  s.dependency 'React-RCTImage'
end
