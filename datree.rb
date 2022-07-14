# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.34-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.34-rc/datree-cli_1.5.34-rc_Darwin_x86_64.zip"
    sha256 "d825ee55af980f306fb703f1b003522cd29f76b619633da8e477a0c86f8f1b0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.34-rc/datree-cli_1.5.34-rc_Darwin_arm64.zip"
    sha256 "12c9ef30a12594f6ab290c3f038db06c25fef0641672e7ecb269132017cb9746"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.34-rc/datree-cli_1.5.34-rc_Linux_x86_64.zip"
    sha256 "0a2cf02603afdc187229bb9e88e7e47ecdffeb0b31f8c12f92197b80c7898cff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.34-rc/datree-cli_1.5.34-rc_Linux_arm64.zip"
    sha256 "12f5dd3742c76c9284181deb6eb351473486a3e40d72beedbd069a55ab9fe985"
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
