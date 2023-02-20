# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.25-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.25-rc/datree-cli_1.8.25-rc_Darwin_x86_64.zip"
    sha256 "46ebddad3839838ca5d91d23a052f6ce58f0039ef8b98481201cf9608ec2dbe8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.25-rc/datree-cli_1.8.25-rc_Darwin_arm64.zip"
    sha256 "2e3fcb336c7d786941d897f91f280fe679477e2eae8689836cf83674959a2e32"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.25-rc/datree-cli_1.8.25-rc_Linux_x86_64.zip"
    sha256 "dc1fa56750fc25982d949c969bdadad7c54832673a96d81a0467a50a309db519"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.25-rc/datree-cli_1.8.25-rc_Linux_arm64.zip"
    sha256 "059da602f89560d91899bf22b3c8a56fce8d85bc804d699bdd54aafdd7f14fde"
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
