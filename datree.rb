# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.16-rc/datree-cli_1.8.16-rc_Darwin_x86_64.zip"
    sha256 "889dda155391ea9ec1f790596f5511378138166f91e6615b0cb5ed0ab260c569"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.16-rc/datree-cli_1.8.16-rc_Darwin_arm64.zip"
    sha256 "d869011805db351ea1c536797ebc3e92e3f082cd77072857a2e2ba01c2d91a2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.16-rc/datree-cli_1.8.16-rc_Linux_x86_64.zip"
    sha256 "7c954c1097efcceb56622cb919d8ea63a383b1ad7dd6292441a2e73ccf5e6115"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.16-rc/datree-cli_1.8.16-rc_Linux_arm64.zip"
    sha256 "d81f3eb1b04efb2b055e46bcd68978a88be405a74684015a38c5e5330d2e2c6a"
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
