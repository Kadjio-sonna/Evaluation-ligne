import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ServiceProfesseurService {

  private baseUrl= "http://127.0.0.1:8000/";

  constructor(private http: HttpClient) { }

  addTeacher(form: any) {
    return this.http.post(this.baseUrl+'addTeacher', form);
  }
}
