class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts: CLI, daemon, MCP server, and host plugins"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.2.4.tgz"
  sha256 "b810c5e1b10228cd5156d5250c6efa2d44279efffea91f6b7edc3234c66c753a"
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
