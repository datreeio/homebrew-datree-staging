# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.27-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.27-rc/datree-cli_1.4.27-rc_Darwin_x86_64.zip"
    sha256 "24566439137840993dd9560262c5c0c364e35754236545ddca12af0412ebbe1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.27-rc/datree-cli_1.4.27-rc_Darwin_arm64.zip"
    sha256 "7086688dd27fadc721f9974e23dc1c9a58189f135cd4948a2e5b58f78cd909f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.27-rc/datree-cli_1.4.27-rc_Linux_x86_64.zip"
    sha256 "a9d99f1b861c61d378ad1fab31a901f90c7a8af27c3d4e59b776ffaaf8b18e16"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.27-rc/datree-cli_1.4.27-rc_Linux_arm64.zip"
    sha256 "508468c45d73ac1f223ce736b5d6044c475f69175c8db1ac679ba52ca0f89d26"
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
