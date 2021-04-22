import { HttpClient } from '@angular/common/http';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit, OnDestroy {

  form: FormGroup;
  constructor(private fb: FormBuilder,
              private http: HttpClient,
              private router: Router,
              private toastr: ToastrService) {}

  ngOnInit() {
    this.form = this.fb.group({
      email: '',
      password: ''
    })
  }
  ngOnDestroy() {
  }

  onSubmit() {
    // console.log(this.form.getRawValue());
    const formData = this.form.getRawValue();
    const data = {
      username: formData.email,
      password: formData.password,
      grant_type: 'password',
      client_id: 2,
      client_secret: 'afSlyjMTjOGlbxwmDRNPz6RyHBdJsoKcqhAFDNPw',
      scope: '*'
    }

    this.http.post("http://127.0.0.1:8000/oauth/token", data).subscribe((result: any) =>{

      console.log('success');
      console.log(result);
      var r:any= result;
      this.toastr.success(r.message, "Vous etes connecte!");

      localStorage.setItem('Token', result.access_token);
      // this.router.navigate(['/home']);
         this.router.navigate(['/cours']);

      // this.ngOnInit();

    }, error=> {
      console.log('error');
      console.log(error);
      // this.toastr.error(error.error.error, 'error');
        this.toastr.error("Erreur de connexion!", 'error');
    });
  }



}
