# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.33-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.33-rc/datree-cli_1.6.33-rc_Darwin_x86_64.zip"
    sha256 "ec59b90361a83e89a5ba909f91c751323b1d5e0e4cb6a6ca64bda7bd04647362"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.33-rc/datree-cli_1.6.33-rc_Darwin_arm64.zip"
    sha256 "70129dbb4fdb13449f74d1c6a8a5e3bc2bed53fc198a201ef1af019d5aa6b509"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.33-rc/datree-cli_1.6.33-rc_Linux_x86_64.zip"
    sha256 "70d2e999bfce6500295d7022b5866a3427198adb7be68c14dbcee052c9f1a07e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.33-rc/datree-cli_1.6.33-rc_Linux_arm64.zip"
    sha256 "b5030af7828fafed122e5d00138a611062605f049fc0ae5d432d9af7b577905d"
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
