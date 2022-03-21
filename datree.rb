# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.12-rc/datree-cli_1.0.12-rc_Darwin_x86_64.zip"
    sha256 "ffbf3e1da5706582d7730b2a79f37f4ebbc198c11bde2722df070049c6997091"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.12-rc/datree-cli_1.0.12-rc_Darwin_arm64.zip"
    sha256 "000d2ffe437ae17b3ec0e7c94bbc441284a3e8aab35597e1f12111123945150e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.12-rc/datree-cli_1.0.12-rc_Linux_x86_64.zip"
    sha256 "4e8f93170e1ed9203a47e5e238a066154828887dfbf5e85cfabb4ca0b1d96a2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.12-rc/datree-cli_1.0.12-rc_Linux_arm64.zip"
    sha256 "bb3f6ab2793ab17a8ce0f14da6ab41916fb68488af6f12f2d6387405da2007f9"
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
