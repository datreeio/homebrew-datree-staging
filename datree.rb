# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.14-rc/datree-cli_0.16.14-rc_Darwin_x86_64.zip"
    sha256 "3a52a00e2d17fb62f728279b79d712be04b9f2347d95baa4618f0500bbd3a746"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.14-rc/datree-cli_0.16.14-rc_Darwin_arm64.zip"
    sha256 "4e8296ac9926281a62565f243f0049e73ccf7783b03146d71d715733e4c00a6c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.14-rc/datree-cli_0.16.14-rc_Linux_x86_64.zip"
    sha256 "81c64810873aa984eae2b657bfb29eaaac438d98ab01898f73f16c89e61a403c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.14-rc/datree-cli_0.16.14-rc_Linux_arm64.zip"
    sha256 "c92692ad4846e81366cc8304275df809cc67b56d3306e83215fbab69cb27422a"
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
      tput init
    EOS
  end
end
