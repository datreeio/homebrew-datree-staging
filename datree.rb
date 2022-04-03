# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.15-rc/datree-cli_1.1.15-rc_Darwin_x86_64.zip"
    sha256 "efa18b032755ab45d7a56c1d13df435145c619a7a823fa5e1521d8d1de4bb3f2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.15-rc/datree-cli_1.1.15-rc_Darwin_arm64.zip"
    sha256 "941766549d98ad15fdf1ba6b24eca6ce23dc30b8151088390dfb3480563fd10b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.15-rc/datree-cli_1.1.15-rc_Linux_x86_64.zip"
    sha256 "5a0ce54c8aaa4171c6c992fb5e02a6b10bda98da7e3590b0e4473451d5cff0f4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.15-rc/datree-cli_1.1.15-rc_Linux_arm64.zip"
    sha256 "9e680c2a00579830d23e78ae30f558fbb35b5a47f20a8604e3c08910522099a2"
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
