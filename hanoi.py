def torre_de_hanoi(n, origem, destino, auxiliar):
    """
    resolve o problema da torre de hanoi para n discos
    
    - n: numero de discos
    - origem: torre de onde os discos comecam
    - destino: torre onde os discos devem chegar
    - auxiliar: torre auxiliar usada como suporte
    """
    
    # caso base: se tiver apenas 1 disco → move diretamente da origem para o destino
    if n == 1:
        print(f"mova o disco 1 de {origem} para {destino}")
        return
    
    # passo 1: move n-1 discos da origem para a torre auxiliar
    torre_de_hanoi(n - 1, origem, auxiliar, destino)
    
    # passo 2: move o maior disco (disco n) da origem para o destino
    print(f"mova o disco {n} de {origem} para {destino}")
    
    # passo 3: move os n-1 discos da torre auxiliar para a torre destino
    torre_de_hanoi(n - 1, auxiliar, destino, origem)

# exemplo de uso
n = 3  # numero de discos
torre_de_hanoi(n, 'a', 'c', 'b')  # a = origem | c = destino | b = auxiliar
