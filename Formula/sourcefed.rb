class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts: CLI, daemon, MCP server, and host plugins"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.2.2.tgz"
  sha256 "4fb6660252f12861a4b8670c1fe1c0cfe2296a91287900cbf22415d9ceacf3d8"
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
