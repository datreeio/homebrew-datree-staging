# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.0-rc/datree-cli_1.8.0-rc_Darwin_x86_64.zip"
    sha256 "52d4995d3ca8b49d0f9451b0cf122bb0750f4c4917169654976ac1963631a329"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.0-rc/datree-cli_1.8.0-rc_Darwin_arm64.zip"
    sha256 "63865e4f9d4fbdbc7c6d5519678cedc1098b324aec00e0bbcb40f683c3886508"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.0-rc/datree-cli_1.8.0-rc_Linux_x86_64.zip"
    sha256 "3a59975c4f5ca86524a7d44ac2d17741fb40e4513e5dbff792a99ff1c1bbf7a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.0-rc/datree-cli_1.8.0-rc_Linux_arm64.zip"
    sha256 "3835e5d8215451c083e98fd796c79a5e7d89045885dd36228002d04917583092"
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
