class AgyAuth < Formula
  desc "Switch Google accounts for Antigravity (agy) in one command"
  homepage "https://github.com/cruel-synthesis/agy-auth"
  url "https://registry.npmjs.org/@cruel-synthesis/agy-auth/-/agy-auth-0.1.1.tgz"
  sha256 "0bae0d671b5864ee0ec278852cf9b35a2f5579e6c0a75f3dad048bead2d6cdff"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/agy-auth --version").strip
  end
end
