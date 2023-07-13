# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.16-rc/datree-cli_1.9.16-rc_Darwin_x86_64.zip"
    sha256 "ea973bd693e56cdd2106bc451867a444d23310db3fdb428c3d78512ee3371106"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.16-rc/datree-cli_1.9.16-rc_Darwin_arm64.zip"
    sha256 "58fbc587d764ba337dbfbcd7128b4b8ab9f556b9282da5f3ec0e83c95c3ae8b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.16-rc/datree-cli_1.9.16-rc_Linux_x86_64.zip"
    sha256 "52612d6bfd7afe1da68e9d39c09110dabe4317cf735c46547c640f11aeba8ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.16-rc/datree-cli_1.9.16-rc_Linux_arm64.zip"
    sha256 "8db189fdd44108e1e5cfaf1413f5e4bfefa2f9de5858a6e9081b1c8beb4e2bfc"
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
