require "FileUtils"

$v = "0.0.1"
$p = "xphilx"

class Xphilx < Formula
  homepage "https://github.com/unclever-labs/#{$p}"

  url "https://github.com/unclever-labs/#{$p}/releases/download/#{$v}/#{$p}-#{$v}-darwin-amd64"
  version $v
  # shasum -a 256 < "bin/${PROJECT}-${VERSION}-${GOOS}-${GOARCH}" | cut -d ' ' -f1
  sha256 "3343943889fd03588a359ebe8b8a342b177aa5faaa688e39eee5de153b1bf5d8"

  def install
    FileUtils.mv("#{$p}-#{$v}-darwin-amd64", "#{$p}")
    bin.install "#{$p}"
  end
end
