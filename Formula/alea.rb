class Alea < Formula
  desc "Command-line tool to make you life easier"
  homepage "https://www.alea.com"
  url "https://github.com/rdiezdev/alea-cli/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "8b4491acff10dbe9d04ab2187f3f986760381e7a98d04e2e3863c3fb853a9111"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
