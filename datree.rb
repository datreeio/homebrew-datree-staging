# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.23-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.23-rc/datree-cli_1.1.23-rc_Darwin_x86_64.zip"
    sha256 "542cf024f1123591ff9c4f5911b6905ec307dc3e94b7fde1193780002c60e83a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.23-rc/datree-cli_1.1.23-rc_Darwin_arm64.zip"
    sha256 "fcee64da5b25d63a914eb48edce88498ad042eada2cb124cd64ecd52fe0dd5a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.23-rc/datree-cli_1.1.23-rc_Linux_x86_64.zip"
    sha256 "a72ad7ae2dee80159dfe5357d3239df1eaa60b256fa4ec0c32893381e194e8e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.23-rc/datree-cli_1.1.23-rc_Linux_arm64.zip"
    sha256 "06b0915c68123cbfc45eb54900ad6234f341ca8996fe8a97a2cc6c746ab7648d"
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
