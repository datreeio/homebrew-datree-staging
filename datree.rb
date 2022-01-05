# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.95-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.95-rc/datree-cli_0.14.95-rc_Darwin_x86_64.zip"
    sha256 "d05a3525ad0714f1177d22054229732befa503bd5f46a7bc37e9ce4c10a350d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.95-rc/datree-cli_0.14.95-rc_Linux_x86_64.zip"
    sha256 "f9e7d67a756058bc12a955fe15f27294b1172daa0fe9dd2bf46bba507db0e6ac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.95-rc/datree-cli_0.14.95-rc_Linux_arm64.zip"
    sha256 "c03c194b0661b0fba654d91a68bdd97e3e19b38fcc2505656dcce9c683570874"
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
