class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.3.2.tgz"
  sha256 "073592254af1e43e23a0af2d6e98f082562131ac402763225b8cc3e40136ecc9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink libexec/"bin/sourcefed"
  end

  test do
    assert_match "jira", shell_output("#{bin}/sourcefed monitor sources")
  end
end
