# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.11-rc/datree-cli_1.5.11-rc_Darwin_x86_64.zip"
    sha256 "637d89964bdf205b464100b4ce3938a7a08ead8eb2a55b09ce2d14b8a1be4807"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.11-rc/datree-cli_1.5.11-rc_Darwin_arm64.zip"
    sha256 "9f1f038f85f5111961ebe74ab9b1ed6908310e75f331c0e6c3477f7449c45f81"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.11-rc/datree-cli_1.5.11-rc_Linux_x86_64.zip"
    sha256 "13e67308e0be6e2c0973ebe7ed9197fbd80ac3faecf678a5d740a0c7a7346be3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.11-rc/datree-cli_1.5.11-rc_Linux_arm64.zip"
    sha256 "b04cbdb485bf842dce2af667f68662321b77fa595084721bd129c2c8a8ba05d2"
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
