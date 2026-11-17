class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.5.2.tgz"
  sha256 "46f68dd0a4f5361d91f9d501f4413be30949fead19d2f8c56b41d36dcd760aa1"
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
