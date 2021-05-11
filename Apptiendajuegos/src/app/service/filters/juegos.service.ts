import { IfiltrosJuegos } from '../../interfaces/filtrosinterfaces';
import { Subject } from 'rxjs';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { IJuego, MsnApijuegos } from '../../interfaces/juegosinterface';

const URL = environment.url;
@Injectable({
  providedIn: 'root'
})
export class juegosService {
  respuesta : MsnApijuegos;

  private juegosStorage = new Subject<IJuego[]>();
  public juegosStorageObservable = this.juegosStorage.asObservable();
  
  constructor( private http : HttpClient) { }
  getFilter (filtros: IfiltrosJuegos): Promise<MsnApijuegos>{
    const httpOptions = {
      headers: new HttpHeaders({
        'Accept' : 'aplication/json'
      })
    };
    let data = JSON.stringify(filtros) ;
    const ruta = `${ URL }/api/juegos/filters`;
    console.log(data);
    return new Promise (resolve => {
      this.http.post<MsnApijuegos>( ruta, {data})
      .subscribe(datos =>{
        console.log(datos);
        this.juegosStorage.next(datos.data);
        this.respuesta = datos;
        resolve(this.respuesta);
      });
    });
  }
}
