Pod::Spec.new do |s|

  s.name         = "sdkTEST"
  s.version      = "0.0.1"
  s.summary      = "A nice logger tool in Swift."
  s.description  = "DESC"

  s.homepage     = "https://github.com/test_user"
  s.license      = { :type => "MIT", :file => "Build/license" }
  s.author       = { "Sergey" => "sergey@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source            = { :http => 'https://github.com/LLTemp/test_sic_zip/raw/main/sdkTEST.framework.zip' }
  s.vendored_frameworks = 'sdkTEST.framework'
  s.header_mappings_dir = 'sdkTEST.framework/Headers'

end