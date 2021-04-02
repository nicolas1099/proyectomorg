import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-juegosplataformas',
  templateUrl: './juegosplataformas.component.html',
  styleUrls: ['./juegosplataformas.component.scss'],
})
export class JuegosplataformasComponent implements OnInit {

  public plataformas: any;
  constructor(private route: ActivatedRoute) { }

  ngOnInit() {
    this.plataformas = this.route.snapshot.paramMap.get('id');
    console.log(this.plataformas);
  }

}
