# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.92-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Darwin_x86_64.zip"
    sha256 "fb9ac8017c79ca23ea4eeea2ad0d0ebd17825ea58842ec9bb60d22991d93cd59"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Linux_x86_64.zip"
    sha256 "61bee9f712270a098f2e54362081ff8d16862b4da8a2083c1b77affbbbd4eeb5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.92-rc/datree-cli_0.14.92-rc_Linux_arm64.zip"
    sha256 "9598b3313ec35015bc878db604e1fbe7909862a7fb3f8e8892d6ea5bdf72de2a"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
