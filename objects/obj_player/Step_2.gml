// Verifique a colisão na direção horizontal (eixo X)
var _col_x = instance_place(x + velh, y, obj_chao);

if (_col_x)
{
    // Se houver uma colisão à direita
    if (velh > 0)
    {
        // Lógica de colisão à direita
        // Por exemplo, defina velh como 0 para parar o movimento
        velh = 0;
    }
    // Se houver uma colisão à esquerda
    if (velh < 0)
    {
        // Lógica de colisão à esquerda
        // Por exemplo, defina velh como 0 para parar o movimento
        velh = 0;
    }
}

// Mova o objeto na direção horizontal
x += velh;

// Verifique a colisão na direção vertical (eixo Y)
var _col_y = instance_place(x, y + velv, obj_chao);

if (_col_y)
{
    // Se houver uma colisão abaixo (descendo)
    if (velv > 0)
    {
        // Lógica de colisão descendo
        // Por exemplo, defina velv como 0 para parar o movimento para baixo
        velv = 0;
    }
    // Se houver uma colisão acima (subindo)
    if (velv < 0)
    {
        // Lógica de colisão subindo
        // Por exemplo, defina velv como 0 para parar o movimento para cima
        velv = 0;
    }
}

// Mova o objeto na direção vertical
y += velv;

// Lógica de pulo
if (keyboard_check_pressed(vk_space) && _col_y)
{
    // Aplicar uma força de pulo (ajuste o valor apropriado)
    velv = -9; // Ajuste o valor do pulo conforme necessário
}
