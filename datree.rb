# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.10-rc/datree-cli_1.5.10-rc_Darwin_x86_64.zip"
    sha256 "1f28ed51f07f9b42883aea4cfd83d535cb2a0ddea90adc101d5a1b4a615e2357"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.10-rc/datree-cli_1.5.10-rc_Darwin_arm64.zip"
    sha256 "11e7a4ebf0c85c63405f67134ab5ffb420d267611e8874d743add70a6c231bfa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.10-rc/datree-cli_1.5.10-rc_Linux_x86_64.zip"
    sha256 "607c4e1c9b3d9a332e77aa641681ea09ffbc4b441b1da581c8761143d59a0513"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.10-rc/datree-cli_1.5.10-rc_Linux_arm64.zip"
    sha256 "a12871d13472685b853bd4258bae3d5808955ffedfea2f880105c6b526753a6e"
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
