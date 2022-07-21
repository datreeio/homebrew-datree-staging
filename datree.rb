# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.37-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.37-rc/datree-cli_1.5.37-rc_Darwin_x86_64.zip"
    sha256 "84e97260900a71651290aa192dfb006ab51afda3002f16783848f423fa744cb4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.37-rc/datree-cli_1.5.37-rc_Darwin_arm64.zip"
    sha256 "7df9fd3fda15bd6288fbee4547fcbbd0b9399ea27178c5a37197ce8e0eda53bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.37-rc/datree-cli_1.5.37-rc_Linux_x86_64.zip"
    sha256 "53b2bd8cf243531d2a125fa02447abe441dc34eed2f1b4406d8aa3a8c2edd917"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.37-rc/datree-cli_1.5.37-rc_Linux_arm64.zip"
    sha256 "f415ade2e39b15d5183c9301b35224d594d87630eb891a58898b28677df7f9b5"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
