import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class PlataformasService {

  constructor(private http: HttpClient ) { }

  public getPlataformas(){
    return this.http.get('http://proyecto.test:8081/api/plataformas');
  }

}
