# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.2-rc/datree-cli_1.9.2-rc_Darwin_x86_64.zip"
    sha256 "e3701818adcf74288de7104819a1aa8441be67dccf96810f8ef558cb6f802f11"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.2-rc/datree-cli_1.9.2-rc_Darwin_arm64.zip"
    sha256 "546ddb20ea2ee749e78aaea56976f226aeafa1abf4b7f1f0fc4c91653bce4265"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.2-rc/datree-cli_1.9.2-rc_Linux_x86_64.zip"
    sha256 "0acc2f9ba369e25f2ad107d22137690d6cc338dc08aed721a7057b5af428b109"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.2-rc/datree-cli_1.9.2-rc_Linux_arm64.zip"
    sha256 "274b4111fcfa54c7f0e659f3d5dd1f0436e2e88d5e035421e7618f693c622c98"
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
