import { ConfigService } from './../../service/config.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-tabs',
  templateUrl: './tabs.page.html',
  styleUrls: ['./tabs.page.scss'],
})
export class TabsPage implements OnInit {

  constructor(public configService: ConfigService) { }

  ngOnInit() {
    console.log(this.configService.isAdmin, this.configService.iconEdit);
  }

}
