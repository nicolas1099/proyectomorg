import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PlataformasService } from './../../service/plataformas.service';

import { ConfigService } from './../../service/config.service';



@Component({
  selector: 'app-plataformas',
  templateUrl: './plataformas.component.html',
  styleUrls: ['./plataformas.component.scss'],
})
export class PlataformasComponent implements OnInit {
  plataformas: any;
  constructor(private PlataformasService: PlataformasService, private Router: ActivatedRoute,public configService: ConfigService) {
    console.log ('plataformas');
    this.PlataformasService.getPlataformas()
    .subscribe( data =>{
      console.log(data);
    })
  }

  ngOnInit() {
    this.plataformas = this.Router.snapshot.paramMap.get('id');
    console.log(this.plataformas)
  }

}
