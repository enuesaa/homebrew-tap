D = Steep::Diagnostic

target :lib do
  signature "sig"

  check "lib"
  ignore ".gem_rbs_collection/parser/3.2/parser.rbs"

  collection_config "rbs_collection.yaml"

  configure_code_diagnostics do |hash|
    hash[D::Ruby::ArgumentTypeMismatch] = :information
    hash[D::Ruby::NoMethod] = :information
    hash[D::Ruby::UnknownConstant] = :information
  end
end
