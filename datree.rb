# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.16-rc/datree-cli_1.0.16-rc_Darwin_x86_64.zip"
    sha256 "807b565e7a4025a8e32b0193b201cb4d2c0d2c00d07e408107f483f106169a54"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.16-rc/datree-cli_1.0.16-rc_Darwin_arm64.zip"
    sha256 "9ef271482949163f6bac2c3f940cdc8cdc57da33151ea568df4c281471060f1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.16-rc/datree-cli_1.0.16-rc_Linux_x86_64.zip"
    sha256 "92106bdcfa68b5e5643fc6d90accc46ec8eab5d384b622ba3481cd29c4d7310f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.16-rc/datree-cli_1.0.16-rc_Linux_arm64.zip"
    sha256 "23f412dfbfd1b55908ed0f2ab642f042b3004deb0b48dc3478de0dc6cf4a8d86"
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
      tput init
    EOS
  end
end
