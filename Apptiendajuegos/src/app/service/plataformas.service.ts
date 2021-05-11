import { Subject } from 'rxjs';
import { MsnApiPlataformas, Iplataforma, IJuego, MsnApijuegos } from './../interfaces/juegosinterface';
import { UsuariosService } from './usuarios.service';
import { environment } from './../../environments/environment';
import { HttpClient,HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

const URL = environment.url;
@Injectable({
  providedIn: 'root'
})
export class PlataformasService {
  private httpOptions: any ;
  public respuesta: MsnApijuegos;
  private juegosStorage = new Subject <IJuego[]>();
  public juegosStorageObservable = this.juegosStorage.asObservable();
  constructor(private http: HttpClient, private uService: UsuariosService) { }

  cabecera(token){
    this.httpOptions = {
      headers:new HttpHeaders({
        'Accept' : 'application/Json',
        'Authorization' : 'Bearer' + token,
      })
    };
  }

  async getJuegosPlataforma(id): Promise<MsnApijuegos>{
    console.log('Id = ', id);
    const token = await this.uService.getToken();
    const ruta = `${ URL }/api/admin/plataformas/${id}/juegos`;
    const httpOptions ={
      headers: new HttpHeaders({
        'Accept' : 'aplication/json',
        'Authorization' : 'Bearer ' + token,
      })
    };
    return new Promise ( resolve => {
      this.http.get<MsnApijuegos>(ruta,httpOptions)
      .subscribe(data => {
        this.respuesta = data;
        this.juegosStorage.next(this.respuesta.data);
        resolve(this.respuesta);
      });
    });
}
async getPlataformas(): Promise<MsnApiPlataformas>{
  const token = await this.uService.getToken();
  const ruta = `${ URL }/api/admin/plataformas`;
  const httpOptions ={
    headers: new HttpHeaders({
      'Accept' : 'aplication/json',
      'Authorization' : 'Bearer ' + token,
    })
  };
  console.log (httpOptions);
  return new Promise ( resolve => {
    this.http.get<MsnApiPlataformas>(ruta,httpOptions)
    .subscribe (respuesta => {
      resolve( respuesta);
    })
  })
  }
}
