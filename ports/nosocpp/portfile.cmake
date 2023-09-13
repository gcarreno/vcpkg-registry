vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO gcarreno/NosoCpp
  REF 92aac0e91e2593216d251d09118897b9fd54ade7
  SHA512 6f29dd31832cbd3337f024ebf775b2d03f0870f28dcdef3672e3b6159cd62fbbea4b2fdba724599c2819df77cb8eed0834c6bce3639846b0b9ea44b7f555b8bc
  HEAD_REF vcpkg-registry
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
