# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.92-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Darwin_x86_64.zip"
    sha256 "615704a29fd430996101de6c611e6f1e3b2f58c11e83fc5cdf2948026eb302f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Linux_x86_64.zip"
    sha256 "39fdbf2095093bed392f68d1aec04c9bfd00a2db0a74f9e61c11c6a9313546ba"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Linux_arm64.zip"
    sha256 "d685e5350580bca13c2366d19f674c167d2021e8f842121ba9a3f9d0f23989d7"
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
