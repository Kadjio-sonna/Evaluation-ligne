import { ActivatedRoute, Router } from '@angular/router';
import { CourModel } from 'src/app/models/cour.model';
import { Component, OnInit } from '@angular/core';
import { CourServiceService } from 'src/app/serviceCours/cour-service.service';

@Component({
  selector: 'app-detail-cour',
  templateUrl: './detail-cour.component.html',
  styleUrls: ['./detail-cour.component.css']
})
export class DetailCourComponent implements OnInit {

  cour: CourModel = new CourModel();
  constructor(private courservice: CourServiceService, private route: ActivatedRoute) {
    this.route.params.subscribe((data: any)=>{
      console.log(data);
      this.showOneCour(data.id);
    })
   }

  ngOnInit(): void {

  }

  showOneCour(idCour) {
    this.courservice.showOneCour(idCour).subscribe((cour: CourModel)=> {
      console.log(cour);
      this.cour = cour;
    });
  }
}
