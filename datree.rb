# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Darwin_x86_64.zip"
    sha256 "c69586b7cf337602c748ab95d6d9e72b09c0d42b020b15da4b09722007c03f6b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Darwin_arm64.zip"
    sha256 "8b8346976f7d883517930d230df2d427eca69335997547c8b52cae4f91a8969c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Linux_x86_64.zip"
    sha256 "19a993310b9e93afeec0235965e3168e12ba2e78cf3cef0bee570ba1c761b514"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.22-rc/datree-cli_1.1.22-rc_Linux_arm64.zip"
    sha256 "7f9a32ea2f1e67ed20452b51c63d13990eef7e4f020ff0a4ae8575ee555186a3"
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
