import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: "app-register",
  templateUrl: "./register.component.html",
  styleUrls: ["./register.component.scss"],
})
export class RegisterComponent implements OnInit {
  form: FormGroup;
  constructor(private fb: FormBuilder,
              private http: HttpClient,
              private toastr: ToastrService) {}

  ngOnInit() {
    this.form = this.fb.group({
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', Validators.required],
      password_confirmation: ['', Validators.required]
    })
  }

  onSubmit() {
    const formData = this.form.getRawValue();

    this.http.post('http://127.0.0.1:8000/register', formData).subscribe( (result: any)=> {
      console.log(result);

      this.toastr.success("Enregistre avec success!", "Success" );
    }, error=> {
      console.log('error');
      console.log(error);
      this.toastr.success(error.error.text, "error");
    });
  }
}
