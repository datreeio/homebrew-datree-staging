# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.6-rc/datree-cli_1.4.6-rc_Darwin_x86_64.zip"
    sha256 "5a8531b95aa3ad34a60770e92e6c1ed4c1dd55fb7debe9f9878325a4205ba42f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.6-rc/datree-cli_1.4.6-rc_Darwin_arm64.zip"
    sha256 "768f31f2a1c868d0fce10f626c5e65b7380520a55cefb680103d8feb8b980a83"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.6-rc/datree-cli_1.4.6-rc_Linux_x86_64.zip"
    sha256 "3841bc62f01231abdb17bfc9e1547854470024a075204a4d91b3acbdb392176d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.6-rc/datree-cli_1.4.6-rc_Linux_arm64.zip"
    sha256 "33f5337c9a3082f658c500ed512a8b35f18f44eb0454be257d008d6c1a8a6adf"
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
