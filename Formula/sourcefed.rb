class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.4.0.tgz"
  sha256 "fc487a6d0f25888f97ba920aec39d2a7812d70fe4d2c093a437c2e9de5423fa4"
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
