# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.20-rc/datree-cli_1.1.20-rc_Darwin_x86_64.zip"
    sha256 "2c32d73f52a410df1377e06373a1742c70b3fca40607415a20a52c4797466fda"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.20-rc/datree-cli_1.1.20-rc_Darwin_arm64.zip"
    sha256 "0f626d663d9c7e6aad13d4e89fde3915417ed557f021f255c065e342cfe46e5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.20-rc/datree-cli_1.1.20-rc_Linux_x86_64.zip"
    sha256 "ef550ba46a8f9215c6c397645896ee7aa5f8ed80f6ff8dbfb00fec2190b130b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.20-rc/datree-cli_1.1.20-rc_Linux_arm64.zip"
    sha256 "a01274cf85fb63b698bea3235647aa1ec8013faff73e463d0c5c2f13f39d322d"
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
