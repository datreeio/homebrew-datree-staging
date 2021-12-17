# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.84-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.84-rc/datree-cli_0.14.84-rc_Darwin_x86_64.zip"
    sha256 "424d84aa5716e66b840fb8f27852045be298ac162f02cc888ceb914452050f44"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.84-rc/datree-cli_0.14.84-rc_Linux_x86_64.zip"
    sha256 "0eec83f3d18890cbe64fe0237e87d1177fe6f31c767d25cd76376bce7fb9b66d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.84-rc/datree-cli_0.14.84-rc_Linux_arm64.zip"
    sha256 "77b332d4b87af1563b60a851888c6195f12486e958697797a95fcaf39cb104fc"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
