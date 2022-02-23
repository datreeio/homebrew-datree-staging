# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.25-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.25-rc/datree-cli_0.15.25-rc_Darwin_x86_64.zip"
    sha256 "fc029c0eedb2b2c65a7deffb41458528037d0e9b076caa4e5e6e56edad92d3e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.25-rc/datree-cli_0.15.25-rc_Darwin_arm64.zip"
    sha256 "483c0e7998a684dfbf0a963c27b72f690486bc56dce6ff407fdba47572b1e15f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.25-rc/datree-cli_0.15.25-rc_Linux_x86_64.zip"
    sha256 "677a169ac1b0a4a28e67eb19dd6bf564dd0329ac3553d9ee96c178be370e1ce0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.25-rc/datree-cli_0.15.25-rc_Linux_arm64.zip"
    sha256 "1887343a09cf97d8ac9e832e39261f3e677959500bcab037e4b73a716ced4eee"
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
