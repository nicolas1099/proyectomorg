import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';
import { CreatuserPageRoutingModule } from './creatuser-routing.module';
import { CreatuserPage } from './creatuser.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    CreatuserPageRoutingModule
  ],
  declarations: [CreatuserPage]
})
export class CreatuserPageModule {}
