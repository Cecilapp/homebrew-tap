class CecilATPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.5/cecil.phar"
  sha256 "32cab6c501fec87bffbf3bd9082747e329dbe16bebdf8b33d24e2e236de84f31"

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
