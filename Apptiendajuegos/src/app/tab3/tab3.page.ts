import { JuegosService } from './../service/juegos/juegos.service';
import { PlataformasService } from './../service/plataformas/plataformas.service';
import { Component } from '@angular/core';

@Component({
  selector: 'app-tab3',
  templateUrl: 'tab3.page.html',
  styleUrls: ['tab3.page.scss']
})
export class Tab3Page {
  plataformas: any;
  juegos: any;

  constructor(private pservice: PlataformasService, private jservice: JuegosService) {}
    ionViewWillEnter() {this.pservice.getPlataformas().subscribe(data => {this.plataformas = data, console.log(data);
    });
    this.jservice.getJuegos().subscribe(data => {this.juegos = data, console.log(data);
    });
  }
}
