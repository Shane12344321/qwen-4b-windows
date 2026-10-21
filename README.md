# Qwen 3.5 4B for Windows

Portable Mozilla llamafile with embedded model weights. No Python, Ollama,
separate llama.cpp installation, or model download is required after setup.
Windows 10/11 x64. CPU mode needs no extra AI runtime.

## Download and run

1. Open this repository's Releases page.
2. Download both `Qwen3.5-4B.exe.part-aa` and `Qwen3.5-4B.exe.part-ab`,
   plus `assemble-and-run.cmd`, into the same folder.
3. Double-click `assemble-and-run.cmd`. It joins and verifies the parts,
   then runs `Qwen3.5-4B.exe` in CPU mode.
4. Future runs can use `Qwen3.5-4B.exe -ngl 0` from Command Prompt.

The assembled executable is 3,910,943,838 bytes. Its SHA-256 is:
`5eb74a4b498a41a78e52ada02e74269048bb35b66b6710ba0b63a606013f4831`.
Allow about 8 GB of free disk space during assembly, plus enough available RAM
for the model and context. Download size is not the total runtime RAM need.
The launcher defaults to a 4096-token context to limit memory use.

GitHub release assets must each be under 2 GiB, so the executable is split
for transport only. Once assembled, the executable contains the runtime and
weights and can be moved on its own. The model runs locally after downloading.
First-run loader/cache extraction may create local temporary files.

GPU operation depends on compatible drivers/backend support; the launcher uses
CPU mode for the fewest dependencies. This package has not been run on Windows
by the publisher; the upstream bundle and exact checksum are preserved.

## Source and license

Unmodified upstream file: Qwen3.5-4B-Q5_K_S.llamafile

https://huggingface.co/mozilla-ai/llamafile_0.10/tree/8c9e234f2068fa6a6f3ed171926b367e65cef160

https://github.com/mozilla-ai/llamafile

Upstream collection license: Apache-2.0. Consult the upstream project and bundled
components for applicable license notices. This is a convenience mirror, not an
official Qwen or Mozilla release.
