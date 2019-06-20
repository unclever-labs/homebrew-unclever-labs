require "FileUtils"

$v = "0.0.1"

class Scidr < Formula
  homepage "https://github.com/unclever-labs/scidr"

  url "https://github.com/unclever-labs/scidr/releases/download/#{$v}/scidr-#{$v}-darwin-amd64"
  version $v
  # shasum -a 256 < "bin/${PROJECT}-${VERSION}-${GOOS}-${GOARCH}" | cut -d ' ' -f1
  sha256 "50808df5d1e2ea97638e5dc1532828883475ad6cbb6e44bdb7a8b5b370b79025"

  def install
    FileUtils.mv("scidr-#{$v}-darwin-amd64", "scidr")
    bin.install "scidr"
  end
end
