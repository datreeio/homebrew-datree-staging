# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.28-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.28-rc/datree-cli_1.6.28-rc_Darwin_x86_64.zip"
    sha256 "7f03f8ef7cd0db299a5b0209a05689985ff773da054497b71c18127f2282de25"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.28-rc/datree-cli_1.6.28-rc_Darwin_arm64.zip"
    sha256 "4672dc7e492d1367dd5bcb6700729fa39f2e4cfd60ea829679996cd2772efee7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.28-rc/datree-cli_1.6.28-rc_Linux_x86_64.zip"
    sha256 "40f4c4eb046bba0cb2a5688df24b0372a09e1c697acffde9705d367dffef9bb9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.28-rc/datree-cli_1.6.28-rc_Linux_arm64.zip"
    sha256 "1563ff5ccccace2167384da58465ffffd08140ea2d97f3b0ae497e574f21abab"
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
