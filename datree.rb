# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.10-rc/datree-cli_1.9.10-rc_Darwin_x86_64.zip"
    sha256 "0d518dab35bb45d4de50ba0f9968789daaff8584367218601b02f652d6a42228"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.10-rc/datree-cli_1.9.10-rc_Darwin_arm64.zip"
    sha256 "c42496b809faecc7a0a097faeb91ca34123f1f1d195902c2ed09e2636fa25e5a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.10-rc/datree-cli_1.9.10-rc_Linux_x86_64.zip"
    sha256 "53c0a9b58b8b9d6ee063e2933e74bb11c4f5950de23bb1d10f18030a1d138717"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.10-rc/datree-cli_1.9.10-rc_Linux_arm64.zip"
    sha256 "b5ccf5f9fbda147c9afce84506733a292092234e9351e40e291c1c272205e7c0"
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
