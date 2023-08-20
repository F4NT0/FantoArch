# Utilizando Ventoy

Ventoy é um programa para criar uma pendrive bootavel com várias ISOS diferentes juntas

## Instalação

Acesse a [Página de Releases](https://github.com/ventoy/Ventoy/releases) e selecione a versão mais reccente para o seu computador.

## Configuração

### Conecte uma pendrive

Coloque uma pendrive no seu computador e use o seguinte comando para encontrar ele pelo console:

```
sudo fdisk -l
```

Ele vai mostrar as informações de cada disco do seu computador

<img src="https://github.com/F4NT0/FantoArch/assets/18719295/09888d8d-5ec5-4aea-ada3-aafaa5215b55" width="500">

### Transforme a pendrive no ventoy

Agora que tem o nome do disco para formatar, vamos transformar a pendrive no ventoy

- No NixOS

```shell
> nix-env -iAv nixos.ventoy
> sudo ventoy -i /dev/sdx
```

### Como usar

Somente copie e cole a ISO do seu sistema operacional desejado dentro da pendrive que ja vai funcionar.
