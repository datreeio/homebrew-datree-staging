# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.4-rc/datree-cli_1.2.4-rc_Darwin_x86_64.zip"
    sha256 "9152783409fd83030e239fa7e6d3ab936fc470dccb6a7050807a7cff843dc03d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.4-rc/datree-cli_1.2.4-rc_Darwin_arm64.zip"
    sha256 "f0668f1d72185ae95ed402192d2b2b4f915c0d9857621e435d3e23f0d4bfda3b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.4-rc/datree-cli_1.2.4-rc_Linux_x86_64.zip"
    sha256 "d7254c252f8318d1affc987ec0a226d4a27dc260717f936bb2421d7ec37de0f1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.4-rc/datree-cli_1.2.4-rc_Linux_arm64.zip"
    sha256 "a200f4b53b94d3081962aac6e51de27566c2067867e8ef1ba0ab0726fb7c599c"
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
