# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-rc/datree-cli_1.0.10-rc_Darwin_x86_64.zip"
    sha256 "37d1deca7e0b904ea8566693ca9cb7ed426b562635847eaff1bba82c694be0a0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-rc/datree-cli_1.0.10-rc_Darwin_arm64.zip"
    sha256 "740546744914f95c8a3d9d4929778d147e1d94f9da26a7792f3bea11ba2bf09a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-rc/datree-cli_1.0.10-rc_Linux_x86_64.zip"
    sha256 "9c35f7c642846b956507b895726ddb03d76842f1e9a80c22689c37f5ce555125"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.10-rc/datree-cli_1.0.10-rc_Linux_arm64.zip"
    sha256 "ddd86b6a0b2bac875b801f8ad1c78c582d746a640ff30bd0e9805e23c18531ed"
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
