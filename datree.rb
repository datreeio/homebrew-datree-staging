# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.12-rc/datree-cli_1.8.12-rc_Darwin_x86_64.zip"
    sha256 "8bd0cc22aa60ba0ab00d0ae6c29928f64a3fbe65073a207d0ea77daf0b24ae7c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.12-rc/datree-cli_1.8.12-rc_Darwin_arm64.zip"
    sha256 "5df3733842b467412b84617cef0ff7a596753f10860e5301b438f7d02620de9a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.12-rc/datree-cli_1.8.12-rc_Linux_x86_64.zip"
    sha256 "91b5fa19434a83ed9f21f6ba6dcca552ee8e66414e795e9c4736f2e1da934838"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.12-rc/datree-cli_1.8.12-rc_Linux_arm64.zip"
    sha256 "bedebd0aef0149e72266f0f76ddfa65ff3093ac7cce92bcabb070c5e3930b43c"
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
