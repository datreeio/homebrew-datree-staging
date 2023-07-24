# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.21-rc/datree-cli_1.9.21-rc_Darwin_x86_64.zip"
    sha256 "d1ce9129ba95c237c1b136f3571be28645779d472666449978ec6d41efbb9570"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.21-rc/datree-cli_1.9.21-rc_Darwin_arm64.zip"
    sha256 "b105b906e21b952126bd10f142018a75354a07d3616f229af110e3eb304363ed"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.21-rc/datree-cli_1.9.21-rc_Linux_x86_64.zip"
    sha256 "14326305f4e478583968025aedd12a2f9303ea81c23af7e7e5a9b6f1f3ec8e0f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.21-rc/datree-cli_1.9.21-rc_Linux_arm64.zip"
    sha256 "a14c1f0d21e0663fe886482985eb9fd2c8c956e2e4fc8572cfde10a62f32639a"
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
