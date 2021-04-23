import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TeacherModel } from '../models/teacher.model';

@Injectable({
  providedIn: 'root'
})
export class ServiceProfesseurService {

  private baseUrl= "http://127.0.0.1:8000/";

  constructor(private http: HttpClient) { }

  addTeacher(form: any) {
    return this.http.post(this.baseUrl+'addTeacher', form);
  }

    showTeacher(form: any): Observable<TeacherModel[]>{
    return this.http.post<TeacherModel[]>(this.baseUrl+'showTeacher', form);
  }

    updateTeacher(form: any) {
    return this.http.post(this.baseUrl+'updateTeacher', form);
  }

  deleteTeacher(form: any) {
    return this.http.post(this.baseUrl+'deleteTeacher', form);
  }

}
