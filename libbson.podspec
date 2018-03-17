Pod::Spec.new do |spec|
  spec.name       = "libbson"
  spec.version    = "0.0.1"
  spec.summary    = "Swift bindings for libbson"
  spec.homepage   = "https://github.com/10gen/swift-bson"
  spec.license    = "Apache License 2.0"
  spec.author     = { "mbroadst" => "mbroadst@mongodb.com" }
  spec.platform   = :ios, "9.0"

  spec.source     = {
    :git => "ssh://git@github.com/10gen/swift-bson.git",
    :branch => "master"
  }

  spec.requires_arc = true
  spec.preserve_paths = [ "module.modulemap", "libbson.h" ]
  spec.pod_target_xcconfig = {
    "SWIFT_INCLUDE_PATHS" => "$(PODS_TARGET_SRCROOT)",
    "HEADER_SEARCH_PATHS" => "/usr/local/Cellar/mongo-c-driver/1.9.2/include/libbson-1.0",
    "LIBRARY_SEARCH_PATHS" => "/usr/local/lib"
  }
end
