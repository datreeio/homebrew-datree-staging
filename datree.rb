# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.14-rc/datree-cli_1.6.14-rc_Darwin_x86_64.zip"
    sha256 "605508b3d3c13a9176680f8a87624cf5bec9b16452cae6c4d58367807d16c456"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.14-rc/datree-cli_1.6.14-rc_Darwin_arm64.zip"
    sha256 "9a6181e09c0d3b86ecc14388a1526d2f319f3ce1570b59e1b5ec91517b928898"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.14-rc/datree-cli_1.6.14-rc_Linux_x86_64.zip"
    sha256 "af8f72ff92145913e7f92ed4a3bd42f84bb0b6d56badba8c820022434c7ea976"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.14-rc/datree-cli_1.6.14-rc_Linux_arm64.zip"
    sha256 "d600060854c6def38afb852e5495cfcbccbef19f7feb464ca6f5c3fcfbd2435c"
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
