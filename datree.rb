# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.36-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.36-rc/datree-cli_0.15.36-rc_Darwin_x86_64.zip"
    sha256 "88048e8b057a811946d97ff7ea4e91b5a2ad6d9325f195d94d00c76a9140ce6b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.36-rc/datree-cli_0.15.36-rc_Darwin_arm64.zip"
    sha256 "55417278695cae707fab9830b24f57b3dac7753c53d0f5695b285b9ad7af61aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.36-rc/datree-cli_0.15.36-rc_Linux_x86_64.zip"
    sha256 "a02807e521278710c1464a5bf9e493aa29f628f854da2f21ef4900224d90023f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.36-rc/datree-cli_0.15.36-rc_Linux_arm64.zip"
    sha256 "59951052bde1a59bb7d3db4fa525a0f3d42097fe13dd36f75255607f9ad64b15"
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
      tput init
    EOS
  end
end
