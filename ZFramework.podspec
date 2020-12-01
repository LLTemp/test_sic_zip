
Pod::Spec.new do |spec|
    spec.name         = "ZFramework"
    spec.version      = "1.0.0"
    spec.summary      = "A really short description of test_sic. Included some specific points"
    spec.description  = "Signer’s Interaction Component. Part of the eID App which is responsible for managing keys, interractins with SSA"
    spec.homepage     = "https://github.com/LLTemp/test_sic_zip"
    spec.license      = "MIT"
    spec.author       = { "SergeyBrazhnik" => "sergey.brazhnik@ledgerleopard.com" }
    spec.platform     = :ios, "14.0"

    spec.source       = { :http => "https://github.com/LLTemp/test_sic_zip/raw/main/ZFramework.framework.zip" }
    spec.vendored_frameworks = 'ZFramework.framework'
    spec.vendored_libraries = 'ZFramework.framework/OpenSSL/lib'
    spec.header_mappings_dir = 'ZFramework.framework/OpenSSL/include'
    
    #spec.dependency 'KeychainSwift', '~> 19.0'


    post_install do |installer|
      installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
          target.build_settings(config.name)['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
        end
      end
    end

end



