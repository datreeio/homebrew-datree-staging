# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.11-rc/datree-cli_1.9.11-rc_Darwin_x86_64.zip"
    sha256 "7e547b87ba19f02cf95990218d6a69b474360f52b6ded78b116b1feff3545662"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.11-rc/datree-cli_1.9.11-rc_Darwin_arm64.zip"
    sha256 "2aa3a0f9623306c69f894f163c31d1610d6266640046c5c753b8573452079de4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.11-rc/datree-cli_1.9.11-rc_Linux_x86_64.zip"
    sha256 "8327a7f967c84e36f7c11dcfd66437ba08525e9496702fd6489d63cad98f061d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.11-rc/datree-cli_1.9.11-rc_Linux_arm64.zip"
    sha256 "f46e4bb61c811aec5cc02a53b75af53042a6124386596f7d0daf65c8cd49ae03"
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
