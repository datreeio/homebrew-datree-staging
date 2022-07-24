# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.38-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.38-rc/datree-cli_1.5.38-rc_Darwin_x86_64.zip"
    sha256 "45836d451c1c662bea8ba42f27a5fdfa108a330474fb285d03fd4474e58f3fb7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.38-rc/datree-cli_1.5.38-rc_Darwin_arm64.zip"
    sha256 "9189a994729188a2e9aae790decd44fcdb51c530816da566805d66edf6656c1d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.38-rc/datree-cli_1.5.38-rc_Linux_x86_64.zip"
    sha256 "e67e0ab726dc7d74db8c2c852794f21b27efc66d004076b8ee01378ad56e4483"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.38-rc/datree-cli_1.5.38-rc_Linux_arm64.zip"
    sha256 "ee19ddb42839190fca15d62f859f15a8c4ae118914415722aaa966671704ac4e"
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
