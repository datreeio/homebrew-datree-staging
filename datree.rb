# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.22-rc/datree-cli_0.15.22-rc_Darwin_x86_64.zip"
    sha256 "965bfcbef98941a17240a3a695896c185fbf96bedbcaaee42e3954aba8f583b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.22-rc/datree-cli_0.15.22-rc_Darwin_arm64.zip"
    sha256 "5c514c1f092939b8cfe350ab713ccb01660619975f8536b90b1e864b4e935cb0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.22-rc/datree-cli_0.15.22-rc_Linux_x86_64.zip"
    sha256 "456d6f2f3bd32090fac55f7c876414e79b20c33c04e90a5e4374174dfa64f343"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.22-rc/datree-cli_0.15.22-rc_Linux_arm64.zip"
    sha256 "35e8bf3c23d1ec27efd46814c269b5d4559e94419ee9e4b85cf38832003a49bf"
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
