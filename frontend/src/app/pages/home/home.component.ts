import { HttpClient, HttpHeaderResponse, HttpHeaders } from '@angular/common/http';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  user;
  constructor(private http: HttpClient,
              private router: Router) { }

  ngOnInit(): void {

    const headers = new HttpHeaders({
      'Authorization':`Bearer ${localStorage.getItem('Token')}`

    });

    this.http.get('http://127.0.0.1:8000/user', {headers: headers}).subscribe(result=> {
      console.log(result);

      this.user = result;
    }, error=> {
      localStorage.removeItem('Token');
     this.router.navigate(['/login']);
    })
  }

}
