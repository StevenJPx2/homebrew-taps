class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts: CLI, daemon, MCP server, and host plugins"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.3.1.tgz"
  sha256 "5175cbd1ef0a684adbbb51b3f7dc2b355a9d502fbbe44916b5255731119de18a"
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
