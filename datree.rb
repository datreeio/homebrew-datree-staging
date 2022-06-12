# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.9-rc/datree-cli_1.5.9-rc_Darwin_x86_64.zip"
    sha256 "8726237407cc521e40e3afd328261c6a2f1ae4459b70e1ae645bdb3d994e94a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.9-rc/datree-cli_1.5.9-rc_Darwin_arm64.zip"
    sha256 "334709e9076c5ab932d4166d0b318ff1e0fb7a687100e5871b07d9d5718f6bfa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.9-rc/datree-cli_1.5.9-rc_Linux_x86_64.zip"
    sha256 "0e94d5ae98b199493f3eb0bc285ba21d175d19678b5af5f1cec375b96509996d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.9-rc/datree-cli_1.5.9-rc_Linux_arm64.zip"
    sha256 "e98a7344c04869b512cc6349f1b1f1bffb38f57316525868a187b06fb508cab4"
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
