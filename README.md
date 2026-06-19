# SEGURANÇA EM CONTAINERS E KUBERNETS

## Alunos
* **Antonio Hérisson** — [LinkedIn](https://www.linkedin.com/in/h%C3%A9risson-silva-6110a316b/)
* **Antonio Douglas** — [LinkedIn](https://www.linkedin.com/in/adb-albuquerque/)

## TRABALHO FINAL - Parte 1 — Pipeline Segura

## Parte 1 · Construção Segura
**Arquitetura do desafio:** ecossistema de defesa 360º – fase de build.

### Requisitos da Atividade:

1. **Validação CIS Docker Benchmark via Dockle:**
   - Crie uma pipeline de CI que valide o *CIS Docker Benchmark* utilizando a ferramenta **Dockle**.
   - Se houver alguma inconformidade fatal, configure a pipeline para causar a falha do CI usando o parâmetro `--exit-code 1`.

2. **Integração do Trivy (CVEs e Secrets):**
   - Integre o **Trivy** para validar vulnerabilidades conhecidas (CVEs) e segredos (*secrets*) embutidos.
   - Bloqueie o deploy caso sejam encontradas vulnerabilidades com severidade **CRITICAL**.

3. **Assinatura de Imagem com Cosign:**
   - Após o sucesso de todos os scans anteriores, realize a assinatura da imagem utilizando o **Cosign** (preferencialmente em modo *keyless* via OIDC, se possível).

4. **Publicação do SBOM (Software Bill of Materials):**
   - Publique o **SBOM** no formato **CycloneDX** como um artefato do build para fins de auditoria futura.