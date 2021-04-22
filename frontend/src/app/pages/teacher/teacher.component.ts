import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { TeacherModel } from 'src/app/models/teacher.model';
import { ServiceProfesseurService } from 'src/app/serviceProfesseur/service-professeur.service';

@Component({
  selector: 'app-teacher',
  templateUrl: './teacher.component.html',
  styleUrls: ['./teacher.component.css']
})
export class TeacherComponent implements OnInit {

  teacher: TeacherModel = new TeacherModel();
  AllTeachers: TeacherModel[] = [];
  image_prof: any;
  constructor(private toastr: ToastrService, private teacherservice: ServiceProfesseurService) { }

  ngOnInit(): void {

    this.teacherservice.showTeacher("").subscribe((teachers: TeacherModel[])=> {
      console.log(teachers);
      this.AllTeachers = teachers;
    });
  }


  addTeacher() {

    var form = new FormData();
    form.append("name", this.teacher.name)
    form.append("email", this.teacher.email)
    form.append("subject", this.teacher.subject)
    form.append("phone", this.teacher.phone)
    form.append("sexe", this.teacher.sexe)
    form.append("image_prof", this.image_prof)

    console.log(form);

    this.teacherservice.addTeacher(form).subscribe(res=> {
      var r:any= res;
      this.toastr.success(r.message, "Success!");

    }, error=> {
      console.log(error.error.error);
        error.error.error.forEach((element: string)=> {
       this.toastr.error(element, "Error");
       });
    })
  }

  onChangeFile(event) {

    let file = event.target.files[0];
    let extension = file.name.split('.')[1].toLowerCase();
    let extensionImg = ['png', 'jpg', 'jpeg'];

    if(extensionImg.indexOf(extension) != -1) {
          console.log('image_prof');
          this.image_prof = file;
    }else {
      this.toastr.error("Selectionnez une image !", "Error");
    }
  }
}
