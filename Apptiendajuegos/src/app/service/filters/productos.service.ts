import { Subject } from 'rxjs';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from './../../../environments/environment';
import { IJuego, MsnApijuegos } from './../../interfaces/juegosinterface';


@Injectable({
  providedIn: 'root'
})
export class ProductosService {

  constructor() { }
}
