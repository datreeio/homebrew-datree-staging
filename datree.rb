# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.5-rc/datree-cli_1.2.5-rc_Darwin_x86_64.zip"
    sha256 "ec8f1fa1124241081f6547d3161f8b792bd93eee76c4dd3b7b60377979659ea0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.5-rc/datree-cli_1.2.5-rc_Darwin_arm64.zip"
    sha256 "a0075f04d95c00c4b1ea4b3daa022d443c3867f894fd48e293a6d15e3a3056c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.5-rc/datree-cli_1.2.5-rc_Linux_x86_64.zip"
    sha256 "bb9f861e1da9ca6884144c13ec32c00f49799c8c46d9e2c6ab3b9b7d9ee324dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.5-rc/datree-cli_1.2.5-rc_Linux_arm64.zip"
    sha256 "8daf7801faf32bd0a796744cd2d04ca1ee0567a5381f873023347026d66247f0"
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
