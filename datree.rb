# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.8-rc/datree-cli_1.8.8-rc_Darwin_x86_64.zip"
    sha256 "cfb8fa2759f807d1c0cf7a5b26087605ade4a8a135c02e2bb9a7eec7a2397f5a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.8-rc/datree-cli_1.8.8-rc_Darwin_arm64.zip"
    sha256 "80c1ac6dc0ef5b2597db6d545a7d426116c5d58f36629680102b0473619be0cc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.8-rc/datree-cli_1.8.8-rc_Linux_x86_64.zip"
    sha256 "073f1a2d86bd0ebb7cd0f7bfba21ba7b90b0ecafefcfba50420c2504f197b704"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.8-rc/datree-cli_1.8.8-rc_Linux_arm64.zip"
    sha256 "cf639ee2a6b0cbee7a711856c4e59e4af8550181887dc60b28caec7f4c438f1e"
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
