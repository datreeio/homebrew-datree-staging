# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.8-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Darwin_x86_64.zip"
    sha256 "c966701df0efdd538701a828e08eb25c56c7c30a69ffff983c8cc151a898acd2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Linux_x86_64.zip"
    sha256 "b147111b936e9ae96f7dd540989e060141f7db62a914f61d001f52deb7f9c188"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.8-rc/datree-cli_0.15.8-rc_Linux_arm64.zip"
    sha256 "068b9a43242cea662710c5d3090cb6679d3273d12b8e6b4a6f40837d9c732d0c"
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
