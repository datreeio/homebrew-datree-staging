# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.8-rc/datree-cli_1.3.8-rc_Darwin_x86_64.zip"
    sha256 "133c9a3d88634402626e7539961140581b829c2845cb91293dd3cb29fe61790b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.8-rc/datree-cli_1.3.8-rc_Darwin_arm64.zip"
    sha256 "f81c27f999e1a7d9dd9eba4a34fdb00ecaf619e9e2147fb5ad280cd77efdd06b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.8-rc/datree-cli_1.3.8-rc_Linux_x86_64.zip"
    sha256 "e037463a65602023c0f9b7bbc022264707e408a21f4dc6ce7bd65a54bafe0401"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.8-rc/datree-cli_1.3.8-rc_Linux_arm64.zip"
    sha256 "2af3bd9b5a129cdb0ee9877ae92e670342394ec47a63a3f1fde08d3334fa22f7"
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
