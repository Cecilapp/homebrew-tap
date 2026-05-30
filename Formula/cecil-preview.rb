class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.99.0-beta.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.99.0-beta.1/cecil.phar"
  sha256 "4ab28e40aac19e8ba6d16475ab13e5bbd8a6e28520875e2548dd2681f64718c3"

  keg_only :versioned_formula

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
