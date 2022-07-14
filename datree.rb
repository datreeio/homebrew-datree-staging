# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.33-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.33-rc/datree-cli_1.5.33-rc_Darwin_x86_64.zip"
    sha256 "58df800c72643b3ceb2aa55441b51109a0123e6b68fc76c124503b3ad7590d5c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.33-rc/datree-cli_1.5.33-rc_Darwin_arm64.zip"
    sha256 "bf839647f83fc0575827500b96a2dfc24388317afa5796679937887271c8e264"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.33-rc/datree-cli_1.5.33-rc_Linux_x86_64.zip"
    sha256 "8de9e360e320a05ac0452d677e243583b76bad13e00e479736f9356cd0b40054"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.33-rc/datree-cli_1.5.33-rc_Linux_arm64.zip"
    sha256 "d55487cb40676a3eb8c4a7caf4dcb9471fc737e5d3a1ca5835f6ae319f62c488"
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
