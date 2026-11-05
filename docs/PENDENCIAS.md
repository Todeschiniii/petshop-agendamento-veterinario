# Pendências

## Abertas

- **P-001** · 2026-11-05 · `ConexaoBD.java` tem uma alteração local sem commit: o usuário passou para `root` e a senha de exemplo foi trocada pela senha real do MySQL deste PC. Não fazer commit dessa mudança, porque a senha ficaria no repositório. Para resolver de vez, tirar usuário e senha do código (variável de ambiente ou arquivo de configuração no `.gitignore`), o que depende da decisão do grupo. Até lá, antes de cada commit, conferir `git diff ConexaoBD.java`.

## Resolvidas
