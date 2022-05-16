# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.17-rc/datree-cli_1.4.17-rc_Darwin_x86_64.zip"
    sha256 "db496b91714c4507ef944d28fe892b8537ca3fea576e60e3ecc7d1d887593c7a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.17-rc/datree-cli_1.4.17-rc_Darwin_arm64.zip"
    sha256 "efe54005f35b46f0699cb90b624698579e97dda627de8c35bf660366336c1db0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.17-rc/datree-cli_1.4.17-rc_Linux_x86_64.zip"
    sha256 "13db9d3153facc3ba9c54ada5d795d0bbf91321670b436905288c0b297c388f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.17-rc/datree-cli_1.4.17-rc_Linux_arm64.zip"
    sha256 "b772937c01e9cfbb5c7fee1a99ca61d352bf2988e640a6e2b3048934686da4a3"
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
