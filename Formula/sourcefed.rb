class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.3.8.tgz"
  sha256 "d717dd6348a0017911c7e33cf5a4c5bbec3334e96d8dc2a36c475e46e69b10bf"
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
