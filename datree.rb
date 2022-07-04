# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.24-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.24-rc/datree-cli_1.5.24-rc_Darwin_x86_64.zip"
    sha256 "d38cd4e55d2e591d7e38d3872d59a7df9ec57c9d670eca25884f5103c260294f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.24-rc/datree-cli_1.5.24-rc_Darwin_arm64.zip"
    sha256 "cc716ff42a09f9715483c4009950c94aa9af7ef619a50de738e93f15d57c3007"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.24-rc/datree-cli_1.5.24-rc_Linux_x86_64.zip"
    sha256 "b750125592ffbe8a96c202b0d7462ec12a90bb3a840d6c6331448c3847e57562"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.24-rc/datree-cli_1.5.24-rc_Linux_arm64.zip"
    sha256 "9a1b419cf2305c494deee32f77bae4f3ba48ad870b38707e1e471bb50f455436"
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
