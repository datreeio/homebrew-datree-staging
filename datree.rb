# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.11-rc/datree-cli_1.3.11-rc_Darwin_x86_64.zip"
    sha256 "61f122ffc547dee58781d317bd3c355502abbba42ba2aafd06d112e14b759e82"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.11-rc/datree-cli_1.3.11-rc_Darwin_arm64.zip"
    sha256 "af04573241520bfd869aed5cb4a0b6d1d704764e8471ecaf380e8fd9b71794f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.11-rc/datree-cli_1.3.11-rc_Linux_x86_64.zip"
    sha256 "b0edb97620278447a0684d6f1581e25603c65c65d388526174d17a362687288a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.11-rc/datree-cli_1.3.11-rc_Linux_arm64.zip"
    sha256 "a51bd1616c11fec0ff8011ecee1c3958ce8252b7545a46320d243719f6f696d0"
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
