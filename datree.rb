# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.101-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.101-rc/datree-cli_0.14.101-rc_Darwin_x86_64.zip"
    sha256 "10efc7a842c475e81f7d84b68e3dc0261f37bf63738c8755f7b94a0e2d28b70a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.101-rc/datree-cli_0.14.101-rc_Linux_x86_64.zip"
    sha256 "406e9cb437a0ec905f33a854e24a4532a1e0c5fb8b1bbf55e9b1005049cbddc1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.101-rc/datree-cli_0.14.101-rc_Linux_arm64.zip"
    sha256 "a331584c6db9bbd86031899bc149da266ed2593d5d934a62befaf6c9230ff83b"
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
