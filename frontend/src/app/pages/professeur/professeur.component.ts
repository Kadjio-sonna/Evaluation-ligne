import { TeacherModel } from 'src/app/models/teacher.model';
import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { ServiceProfesseurService } from 'src/app/serviceProfesseur/service-professeur.service';


@Component({
  selector: 'app-professeur',
  templateUrl: './professeur.component.html',
  styleUrls: ['./professeur.component.css']
})
export class ProfesseurComponent implements OnInit {

  AllTeachers: TeacherModel[] = [];

  constructor(private toastr: ToastrService, private teacherservice: ServiceProfesseurService) { }

  ngOnInit(): void {

      this.teacherservice.showTeacher("").subscribe((teachers: TeacherModel[])=> {
      console.log(teachers);
      this.AllTeachers = teachers;
    });

  }


}
