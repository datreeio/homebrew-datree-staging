# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.15-rc/datree-cli_1.9.15-rc_Darwin_x86_64.zip"
    sha256 "aea839317eecbdd14daea123a3c093723253f225b9e4bd816afc121ea7bb2031"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.15-rc/datree-cli_1.9.15-rc_Darwin_arm64.zip"
    sha256 "43698a5fe6d13b707c412c4be7d1bbfb5fcb6df4be071b0c87f20b0db35a0b1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.15-rc/datree-cli_1.9.15-rc_Linux_x86_64.zip"
    sha256 "45b83e32672ef44887fd31dae9173debd5a83d49e02e226c051f6c3e4075f639"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.15-rc/datree-cli_1.9.15-rc_Linux_arm64.zip"
    sha256 "2960d2790e09ef613906d7715034c4881c82ab4be1d6a77bdad2f619712bfd89"
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
