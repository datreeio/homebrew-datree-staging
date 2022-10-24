# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.42-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.42-rc/datree-cli_1.6.42-rc_Darwin_x86_64.zip"
    sha256 "db413742738c1c76ee91a6dff62c9ff551ff5d1c113b56c75f736cc72bd2dd47"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.42-rc/datree-cli_1.6.42-rc_Darwin_arm64.zip"
    sha256 "0f60b1e91e4e0e15b75223cccf6f4f442d48ade25ffd1dbe36b4a85a4080f478"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.42-rc/datree-cli_1.6.42-rc_Linux_x86_64.zip"
    sha256 "762a5e9019a4fb96a5e534a1a4d2271459316b00c92361f5d1a07cf470eb18f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.42-rc/datree-cli_1.6.42-rc_Linux_arm64.zip"
    sha256 "b563565d9d06f560a6f84a2cb9b5cfb42b0d4e1b0d556d73fbdf4c450bc8203c"
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
