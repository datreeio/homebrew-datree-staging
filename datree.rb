# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.9-rc/datree-cli_1.6.9-rc_Darwin_x86_64.zip"
    sha256 "c1764b0348b364ba7471cd8efe0d06b464f71ba11fe1ca5dca835e25224feec1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.9-rc/datree-cli_1.6.9-rc_Darwin_arm64.zip"
    sha256 "c49b5663c340c6cb6643a1f892a70bb761ebfd12e8888ae216ddeb3efa0cac15"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.9-rc/datree-cli_1.6.9-rc_Linux_x86_64.zip"
    sha256 "eb9125d7b649b887137b18f687d1e8ff6c04dcfeb99539632ce7a7b99b64a93b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.9-rc/datree-cli_1.6.9-rc_Linux_arm64.zip"
    sha256 "e22d4fdac2e1914699a58c6cbeff97134491e5a22d98b7bfad7d864ad52004d6"
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
