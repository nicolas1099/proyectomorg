import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { CreatuserPage } from './creatuser.page';

const routes: Routes = [
  {
    path: '',
    component: CreatuserPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class CreatuserPageRoutingModule {}
