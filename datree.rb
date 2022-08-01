# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.5-rc/datree-cli_1.6.5-rc_Darwin_x86_64.zip"
    sha256 "0f2172556e96d5eb78b133d0cf0c0032c250cc53562a4596c304baa063a1e2e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.5-rc/datree-cli_1.6.5-rc_Darwin_arm64.zip"
    sha256 "690a32f48193333435d63b4851ace20ef698a315e90e8ffbdb8ae77f95979b1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.5-rc/datree-cli_1.6.5-rc_Linux_x86_64.zip"
    sha256 "64022875e7812e9f705b8f7d0dfea83d8667242a9c9156257dbc4e1dd3fef8eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.5-rc/datree-cli_1.6.5-rc_Linux_arm64.zip"
    sha256 "8b6d0db786e3f2103ed35ce99749214469cdd29f5123b88c170ca8b2956a7948"
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
