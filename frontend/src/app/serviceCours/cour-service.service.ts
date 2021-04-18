import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { CourModel } from '../models/cour.model';

@Injectable({
  providedIn: 'root'
})
export class CourServiceService {
  private baseUrl= "http://127.0.0.1:8000/";

  constructor(private http: HttpClient) { }

  addCour(form: any) {
    return this.http.post(this.baseUrl+'addCour', form);
  }


  showCour(form: any): Observable<CourModel[]>{
    return this.http.post<CourModel[]>(this.baseUrl+'showCour', form);
  }

  updateCour(form: any) {
    return this.http.post(this.baseUrl+'updateCour', form);
  }

  deleteCour(form: any) {
    return this.http.post(this.baseUrl+'deleteCour', form);
  }

  showOneCour(id: any): Observable<CourModel>{
    return this.http.get<CourModel>(this.baseUrl+'showOneCour/'+id);
  }
}
