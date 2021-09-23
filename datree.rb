# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.2-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.2-staging/datree-cli_0.13.2-staging_Darwin_x86_64.zip"
    sha256 "169af69d21875d990a54ae1ddcae0867e6b5a909be877af15a851c7348c24a75"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.2-staging/datree-cli_0.13.2-staging_Linux_x86_64.zip"
    sha256 "a2e3aca3431edc163dfc8d441dfc012e08ebafc2d63206db7b80844ed84e2fff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.2-staging/datree-cli_0.13.2-staging_Linux_arm64.zip"
    sha256 "3dd854f4aa46a69aa6a4a069bad0afa38549460952c567f521012395c94f533f"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
