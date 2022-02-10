# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.15-rc/datree-cli_0.15.15-rc_Darwin_x86_64.zip"
    sha256 "ebe7e7f24a805f0ab34f87ba070ca10fb45b171796da5ba921e8ae6c69de2e9c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.15-rc/datree-cli_0.15.15-rc_Darwin_arm64.zip"
    sha256 "cb4209c91e371a8c73cc04cd35cdfbb8bcd6a8114bfd2cc66e077fb851dc5cdd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.15-rc/datree-cli_0.15.15-rc_Linux_x86_64.zip"
    sha256 "96f6e524c05bdf46bde3450b761241a1d42ae184ef711b1c3ad9f6fe5ea737ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.15-rc/datree-cli_0.15.15-rc_Linux_arm64.zip"
    sha256 "6a9f53fe6ef6bd6bb1cf328a9adb12e2012f25a372f998b8b02c4886281e1f00"
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
