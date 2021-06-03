import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { UsuariosService } from './usuarios.service';
import { MsnApiPlataformas, IJuego, Iplataforma, MsnApijuegos } from './../interfaces/juegosinterface';
import { Subject } from 'rxjs';

const URL = environment.url;

@Injectable({
  providedIn: 'root'
})
export class JuegosService {
  private httpOptions: any ;
  public respuesta: MsnApijuegos;

  constructor(private http: HttpClient, private uService:UsuariosService ) {}
    async showJuegos(id): Promise<MsnApijuegos>{
      console.log('Id = ', id);
      const token = await this.uService.getToken();
      const ruta = `${ URL }/api/admin/juegos/${id}`;
      const httpOptions = {
        headers: new HttpHeaders({
          'Accept' : 'application/json',
          'Authorization' : 'Bearer ' + token,
        })
      };
      return new Promise ( resolve => {
        this.http.get<MsnApijuegos>(ruta,httpOptions)
          .subscribe(data => {
            this.respuesta = data;
            resolve(this.respuesta);
          });
      });
    }

    async dellJuegos(id): Promise<MsnApijuegos>{
      const ruta = `${ URL }/api/admin/juegos/${id}/remove`;
      console.log(ruta);
      return new Promise ( resolve => {
        this.http.delete<MsnApijuegos>(ruta)
        .subscribe(data => {
          console.log(data);
          resolve(data);        
        });
    });
    }

    async updjuegos(id, nombre_juego: string,descripcion: string,precio: number): Promise<MsnApijuegos>{
      const ruta =  `${ URL }/api/admin/juegos/${id}/upjuegos`;;
      console.log(ruta);
      const data = { nombre_juego, descripcion, precio };
      console.log(data);
      return new Promise ( resolve => {
        this.http.put<MsnApijuegos>(ruta,data)
        .subscribe(datos => {
          console.log(datos);
          resolve(datos);        
        });
    });
  }
  }
  