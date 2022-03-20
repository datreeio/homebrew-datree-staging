# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.5-rc/datree-cli_1.0.5-rc_Darwin_x86_64.zip"
    sha256 "8005da9c56c184e560a02ea2cb53586a9f7f834e454a1ba3cd306217038976db"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.5-rc/datree-cli_1.0.5-rc_Darwin_arm64.zip"
    sha256 "30963b1303b5b0f43d2f313d5c4f25b65d4dab721a7725a4616bc8be45954892"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.5-rc/datree-cli_1.0.5-rc_Linux_x86_64.zip"
    sha256 "408834642032fcb316ab007b51b1d75c49076bfdb024f35ba8ecb6e6479d2284"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.5-rc/datree-cli_1.0.5-rc_Linux_arm64.zip"
    sha256 "d95674323ffa66b744ed4f6bca8db50c05c9a7eed6b00bdf0b7eda1e4d4bf079"
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
