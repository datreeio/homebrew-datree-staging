# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.18-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.18-rc/datree-cli_0.14.18-rc_Darwin_x86_64.zip"
    sha256 "12584b35ff3afe77d1280c2c3d8b03b21f59dad584aeff5da171970a8c26dd27"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.18-rc/datree-cli_0.14.18-rc_Linux_x86_64.zip"
    sha256 "b6231cb24e2852144ffc628486cce5b49543e7267820e6c6afe5c2c13ea89630"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.18-rc/datree-cli_0.14.18-rc_Linux_arm64.zip"
    sha256 "42a2f5411f4eecad5c6cd32d2bdc17c58a686042dfab5dbc25aea5f8f280b15b"
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
