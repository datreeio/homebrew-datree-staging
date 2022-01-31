# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.13-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.13-rc/datree-cli_0.15.13-rc_Darwin_x86_64.zip"
    sha256 "f4d28eda4c9831df4d96fc0a352dcbb59138fa5a1336e6725fbc1d772b43cdc8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.13-rc/datree-cli_0.15.13-rc_Linux_x86_64.zip"
    sha256 "5c7bdc3c12e446916189e00575c32a3d3f2afde6d01188091f55f8587b8b3502"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.13-rc/datree-cli_0.15.13-rc_Linux_arm64.zip"
    sha256 "f37b37c4a12ffeeeb5102de0ee2d9a11c560f272ae5410d4876df10368cb136c"
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
