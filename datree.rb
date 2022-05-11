# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.9-rc/datree-cli_1.4.9-rc_Darwin_x86_64.zip"
    sha256 "1cf1ce30ee8a54029dcee66823db7209d8ca36adc9f1c341fd2284d80cd71b6c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.9-rc/datree-cli_1.4.9-rc_Darwin_arm64.zip"
    sha256 "44db482a9555764154953bb7dbeff2c1c9b2207d243d06fccd96c7762f51772f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.9-rc/datree-cli_1.4.9-rc_Linux_x86_64.zip"
    sha256 "fb05f5f6af095452b68177632648d33f0705b66683c3d8436749fb4eccbebda5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.9-rc/datree-cli_1.4.9-rc_Linux_arm64.zip"
    sha256 "3c1115ef66b0ff06238399f63a7784bbe8ce03c04990dad15adf93893515ad2a"
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
