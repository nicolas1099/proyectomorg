import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class JuegosService {

  constructor(private http: HttpClient ) { }

  public getJuegos(){
    return this.http.get('http://proyecto.test/api/juegos');
  }
}
