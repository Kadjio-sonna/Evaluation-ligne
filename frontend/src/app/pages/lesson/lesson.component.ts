import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { CourModel } from 'src/app/models/cour.model';
import { CourServiceService } from 'src/app/serviceCours/cour-service.service';

@Component({
  selector: 'app-lesson',
  templateUrl: './lesson.component.html',
  styleUrls: ['./lesson.component.css']
})
export class LessonComponent implements OnInit {

  cour: CourModel= new CourModel();
  AllCours: CourModel[] = [];
  fileData: any;
  pdfData: any;

  constructor(private toastr: ToastrService, private courservice: CourServiceService) { }

  ngOnInit(): void {

    this.courservice.showCour("").subscribe((cours: CourModel[])=> {
      console.log(cours);
      this.AllCours = cours;
    });
  }

  addCour() {

    var form = new FormData();
    form.append("titre", this.cour.titre)
    form.append("description", this.cour.description)
    form.append("heure", this.cour.heure)
    form.append("image", this.fileData)
    form.append("cour_pdf", this.pdfData)

    console.log(form);

    this.courservice.addCour(form).subscribe(res=> {
      var r:any= res;
      this.toastr.success(r.message, "Success!");

    }, error=> {
      console.log(error.error.error);
        error.error.error.forEach((element: string)=> {
       this.toastr.error(element, "Error");
       });
    })
  }


  showUpdateModal(cour: CourModel) {
    this.cour = cour;
  }

  updateCour() {

    var form = new FormData();
    form.append("id", this.cour.id.toString())
    form.append("titre", this.cour.titre)
    form.append("description", this.cour.description)
    form.append("heure", this.cour.heure)
    console.log(form);

    this.courservice.updateCour(form).subscribe(res=> {
      var r:any= res;
      this.toastr.success(r.message, "Success!");

    }, error=> {
      console.log(error.error.error);
        error.error.error.forEach((element: string)=> {
       this.toastr.error(element, "Error");
       });
    })
  }

  deleteCour(idCour) {

    var form = new FormData();
    form.append("id", idCour);
    this.courservice.deleteCour(form).subscribe(res=> {
      var r: any = res;
      console.log(r);
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
          console.log('image');
          this.fileData = file;
    }else {
      this.toastr.error("Selectionnez une image !", "Error");
    }
    // console.log(extension);
  }

  onChangeFilePdf(event) {
    let file = event.target.files[0];
    let extension = file.name.split('.')[1].toLowerCase();
    let extensionImg = ['pdf', 'docx'];

    if(extensionImg.indexOf(extension) != -1) {
          console.log('pdf ou word');
          this.pdfData = file;
    }else {
      this.toastr.error("Selectionnez un pdf ou word !", "Error");
    }
  }
}
