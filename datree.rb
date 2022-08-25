# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.13-rc/datree-cli_1.6.13-rc_Darwin_x86_64.zip"
    sha256 "f1f0fdbafaf446c0371b56ae3a313dd1dbc7ecbaa5406ecc8652ba67bb1d00b1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.13-rc/datree-cli_1.6.13-rc_Darwin_arm64.zip"
    sha256 "bfd1351560360dea35c83fb56fe94345a724174e4d1284ed796a9d9a9ee30d02"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.13-rc/datree-cli_1.6.13-rc_Linux_x86_64.zip"
    sha256 "eddc92d91f23fcdc516df8c24374377411f1b4ccc1c97453adaefe092919b7a1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.13-rc/datree-cli_1.6.13-rc_Linux_arm64.zip"
    sha256 "14c33ef748db6b5dfc3b8aed317e9f96fa66e138d1a1e4f4ff1d72f52ead6c20"
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
