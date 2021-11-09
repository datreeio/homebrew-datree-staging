# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.42-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.42-rc/datree-cli_0.14.42-rc_Darwin_x86_64.zip"
    sha256 "4a30ef8d3224189bc8d7a0fab44e66c2414ed4f2e835a89e78f44c907bd4be51"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.42-rc/datree-cli_0.14.42-rc_Linux_x86_64.zip"
    sha256 "8309d5c639168dd48529e0132590e02712f4ae6def0151b9e755710a5aaac678"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.42-rc/datree-cli_0.14.42-rc_Linux_arm64.zip"
    sha256 "15c7355c9c3eb75139bd1ead71e5c32085793150c8bdfe51e5592b6f699e1c9f"
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
