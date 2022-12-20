# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.10-rc/datree-cli_1.8.10-rc_Darwin_x86_64.zip"
    sha256 "e1420f9312c6967003565237066128afdd4b6743af4a8bb179138f7b75fe02a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.10-rc/datree-cli_1.8.10-rc_Darwin_arm64.zip"
    sha256 "38bb3dfffd0b9137deb370f2b2b75875a42314df8eef1fae23d04dbac15fc626"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.10-rc/datree-cli_1.8.10-rc_Linux_x86_64.zip"
    sha256 "b305515dcb744745a9bd06220f6ac878a2b1948b454aed8a2ded321b3505a4e6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.10-rc/datree-cli_1.8.10-rc_Linux_arm64.zip"
    sha256 "5032c1bda057848aa3ce7a4cf1449d388637fd4ed13b5215cd75217ea3422b0d"
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
