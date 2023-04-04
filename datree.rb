# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.56-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.56-rc/datree-cli_1.8.56-rc_Darwin_x86_64.zip"
    sha256 "900fc5756c78dd86c5af0469ca75329c3e4d937621a2782208ba8870b6bcc826"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.56-rc/datree-cli_1.8.56-rc_Darwin_arm64.zip"
    sha256 "640e829441cba16f077fe685e47763102de418035bfcfc2de2e38f8c74dd7998"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.56-rc/datree-cli_1.8.56-rc_Linux_x86_64.zip"
    sha256 "6bdcffdc2769e8cb78cdc91ac350a0600cadf364df09e432af011f70dcfb9362"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.56-rc/datree-cli_1.8.56-rc_Linux_arm64.zip"
    sha256 "6a7e7b750bd82eb8e695364cd84c1eb91a3324deca589569ac89c2105ecc0c4b"
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
