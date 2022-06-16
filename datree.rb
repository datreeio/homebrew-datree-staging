# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.16-rc/datree-cli_1.5.16-rc_Darwin_x86_64.zip"
    sha256 "a2cc8ff05c6a218cb51b0fcdf6e114fc9de75b7c03df766d4868af890672c68c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.16-rc/datree-cli_1.5.16-rc_Darwin_arm64.zip"
    sha256 "4cf04ac74bf3bbd1277e88be4e79d290fdf7ba06d4ac2a665477d679624146aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.16-rc/datree-cli_1.5.16-rc_Linux_x86_64.zip"
    sha256 "0ee08a889e7025e3b73c023c0a4330d0f4f04bc616a898d9097648d8568a571d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.16-rc/datree-cli_1.5.16-rc_Linux_arm64.zip"
    sha256 "4fa4293ab729f4716d172d5696a13cec72391b1afb0b8699810a4c87bab7010c"
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
