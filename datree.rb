# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.8-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Darwin_x86_64.zip"
    sha256 "3bf71e4c5083c3058980c3d9c71a10fd9e5cc491b26181dc760d4b8311449e36"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Linux_x86_64.zip"
    sha256 "737f4a6d776b30735e07ea1f3e7d1f5b11379374a8c79479f591f9d3fba9a35f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Linux_arm64.zip"
    sha256 "fe3c1abe38c363cbd3174f3a3fcf449cc72a1b5f4e0b2c8083dc4bd729cab9db"
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
