# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.29-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.29-rc/datree-cli_1.4.29-rc_Darwin_x86_64.zip"
    sha256 "4cbdddfdea68dd1568dcc5698562085f1764c9f2b7e8c062b30ef4100c82acdc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.29-rc/datree-cli_1.4.29-rc_Darwin_arm64.zip"
    sha256 "9cee2e37e2741b4c7f5948dab31c965273ce21f3a66dbcd38cea4be15942178a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.29-rc/datree-cli_1.4.29-rc_Linux_x86_64.zip"
    sha256 "f18055666b3e11ed142f9ad4eff6765ec7eb3f4163eb65a34dd9f7a26674455f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.29-rc/datree-cli_1.4.29-rc_Linux_arm64.zip"
    sha256 "9f2a1f7b29b5b64846ca4d926fe6f7c762e0236fafe7e8dad768c0ab3c3f32da"
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
