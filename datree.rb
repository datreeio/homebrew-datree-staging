# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.11-rc/datree-cli_1.4.11-rc_Darwin_x86_64.zip"
    sha256 "43d292742baf081fb7bd601213714a8623dc4055ebff2d30e926b7e51b325ad9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.11-rc/datree-cli_1.4.11-rc_Darwin_arm64.zip"
    sha256 "56b81cf4bdd3f26ce06601808ad91cca87edf3e143569165c615d3e82ac90ded"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.11-rc/datree-cli_1.4.11-rc_Linux_x86_64.zip"
    sha256 "3a5f9159da3c2b9e09fb16247699ab9978b9df1a7016101f45e3bae80cb1979e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.11-rc/datree-cli_1.4.11-rc_Linux_arm64.zip"
    sha256 "b5c94c35bbe3f59c79bded58d537d4a865beb58f035f49bacf0c80d3a072eb7a"
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
