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
  }
