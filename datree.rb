# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.36-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.36-rc/datree-cli_0.14.36-rc_Darwin_x86_64.zip"
    sha256 "34830186998aa4ec69a6590e7b4bc14c01f83282390adf5b24960a9357a2fdc8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.36-rc/datree-cli_0.14.36-rc_Linux_x86_64.zip"
    sha256 "5d3d42f51ff6be4f98276d56f6453b6a6ebad6d1cf2067520365cd1058adcdac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.36-rc/datree-cli_0.14.36-rc_Linux_arm64.zip"
    sha256 "5b006e6a878d0100b34968aa9c84155eab405dc9eef4026083f045f4def3d25b"
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
