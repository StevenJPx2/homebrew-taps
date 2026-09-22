class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts: CLI, daemon, MCP server, and host plugins"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.3.0.tgz"
  sha256 "f430e80b7f1d5dab3276d4f4d706939cd376072197343f8907d1c4605f173fae"
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
