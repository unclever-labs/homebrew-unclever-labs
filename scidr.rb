require "FileUtils"

$v = "0.0.1"
$p = "scidr"

class Scidr < Formula
  homepage "https://github.com/unclever-labs/#{$p}"

  url "https://github.com/unclever-labs/#{$p}/releases/download/#{$v}/#{$p}-#{$v}-darwin-amd64"
  version $v
  # shasum -a 256 < "bin/${PROJECT}-${VERSION}-${GOOS}-${GOARCH}" | cut -d ' ' -f1
  sha256 "50808df5d1e2ea97638e5dc1532828883475ad6cbb6e44bdb7a8b5b370b79025"

  def install
    FileUtils.mv("#{$p}-#{$v}-darwin-amd64", "#{$p}")
    bin.install "#{$p}"
  end
end
