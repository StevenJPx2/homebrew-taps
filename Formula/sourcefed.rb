class Sourcefed < Formula
  desc "Live Jira, GitHub, and Slack monitoring for agent hosts"
  homepage "https://github.com/StevenJPx2/sourcefed"
  url "https://registry.npmjs.org/@fdcn/sourcefed/-/sourcefed-0.5.1.tgz"
  sha256 "45941f5e3f14250bf05095137a94484d890f97df47323dbfb14109b51f38774b"
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
