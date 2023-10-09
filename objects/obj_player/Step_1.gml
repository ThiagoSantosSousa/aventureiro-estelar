/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Variáveis de entrada
var _left, _right, _jump;

// Verifica as teclas de entrada
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

// Calcula a velocidade horizontal com base nas teclas de entrada
velh = (_right - _left) * vel;

// gravidade

velv	+= grav;
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
