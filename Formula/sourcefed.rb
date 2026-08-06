class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts: CLI, daemon, MCP server, and host plugins"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.2.0.tgz"
  sha256 "08d31503cfb13fc719b4bd9af49f8369b9cfeaa5b26b4b811e4cea56f33bf66d"
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
