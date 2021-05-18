import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { PlataformasService } from './../../../../service/plataformas.service';
import { juegosService } from './../../../../service/filters/juegos.service';
import { IJuego } from './../../../../interfaces/juegosinterface';
import { ConfigService } from './../../../../service/config.service';

@Component({
  selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.scss'],
})
export class EditComponent implements OnInit {

  constructor() { }

  ngOnInit() {}

}
