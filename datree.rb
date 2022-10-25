# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.43-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.43-rc/datree-cli_1.6.43-rc_Darwin_x86_64.zip"
    sha256 "81437036a1fad0560e0197b15b7a61fc1450de3abbbbfd3d184b17883090f715"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.43-rc/datree-cli_1.6.43-rc_Darwin_arm64.zip"
    sha256 "dcd713adb1d1c0e3a546e799547b50a413c2433f7061b790c2af064e75e99b9e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.43-rc/datree-cli_1.6.43-rc_Linux_x86_64.zip"
    sha256 "0e1802c4e510b0431d921e57dd35898cef128b63edee4eaba3529145ca4e7438"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.43-rc/datree-cli_1.6.43-rc_Linux_arm64.zip"
    sha256 "3eb5536f9eaceec060ac020d3c05f32c251b3944cf90801d1d40f3e764fc5647"
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
