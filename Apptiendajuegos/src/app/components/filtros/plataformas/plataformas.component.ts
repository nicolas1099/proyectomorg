import { Component, OnInit } from '@angular/core';
import { PlataformasService } from './../../../service/plataformas.service';
import { Iplataforma } from './../../../interfaces/juegosinterface';

@Component({
  selector: 'app-plataformas',
  templateUrl: './plataformas.component.html',
  styleUrls: ['./plataformas.component.scss'],
})
export class PlataformasComponent implements OnInit {
  public plataformas: Iplataforma;

  constructor(private plataformasService: PlataformasService) { }

 async ngOnInit() {}

}
