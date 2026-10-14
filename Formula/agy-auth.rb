class AgyAuth < Formula
  desc "Switch Google accounts for Antigravity (agy) in one command"
  homepage "https://github.com/cruel-synthesis/agy-auth"
  url "https://registry.npmjs.org/@cruel-synthesis/agy-auth/-/agy-auth-0.1.2.tgz"
  sha256 "421c735b882e62ff47acf38edaacb4eb9c72c3c4bbffd6ac7724b5787c108438"
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
