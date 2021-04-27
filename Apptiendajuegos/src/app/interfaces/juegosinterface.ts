
export interface IJuego {
    juegoid?: number
    nombre_juego?: string;
    descripcion?: string;
    precio?: number;
    entrega?: string;
    imagen?: string;
    plataforma?: Iplataforma;   
}

export interface Iplataforma {
    nombre_plataforma?: string;
    productos?: IJuego[]
}

export interface MsnApiProductos {
    status?: string;
    message?: string;
    errors?: string
    code?: number;
    data?: Iplataforma;
}

export interface MsnApijuegos{
    status?: string;
    message?: string;
    errors?: string;
    code?: Number;
    data?: IJuego[];
}