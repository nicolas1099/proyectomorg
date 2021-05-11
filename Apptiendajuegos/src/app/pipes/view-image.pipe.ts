import { environment } from './../../environments/environment';
import { Pipe, PipeTransform } from '@angular/core';

const URL = environment.url;

@Pipe({
  name: 'viewImage'
})
export class ViewImagePipe implements PipeTransform {

  transform(img: string, tipo: string): string {
    let rutaImg = `${URL}/img/${tipo}/${img}`;
    return rutaImg;
  }

}