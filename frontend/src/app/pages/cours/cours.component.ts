import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { CourModel } from 'src/app/models/cour.model';
import { CourServiceService } from 'src/app/serviceCours/cour-service.service';

@Component({
  selector: 'app-cours',
  templateUrl: './cours.component.html',
  styleUrls: ['./cours.component.css']
})
export class CoursComponent implements OnInit {

  AllCours: CourModel[] = [];
  constructor(private toastr: ToastrService, private courservice: CourServiceService) { }

  ngOnInit(): void {

    this.courservice.showCour("").subscribe((cours: CourModel[])=> {
      console.log(cours);
      this.AllCours = cours;
    });
  }
}
