import { JuegosService } from './../service/juegos/juegos.service';
import { Component } from '@angular/core';

@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page {
  juegos: any;

  constructor(private jservice: JuegosService) {}
  ionViewWillEnter() {this.jservice.getJuegos().subscribe(data => {this.juegos = data, console.log(data);
  });
}
}
