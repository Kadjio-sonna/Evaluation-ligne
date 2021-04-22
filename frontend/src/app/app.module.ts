import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { BrowserModule } from '@angular/platform-browser';

import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
import { AuthLayoutComponent } from './layouts/auth-layout/auth-layout.component';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { AppRoutingModule } from './app.routing';
import { ComponentsModule } from './components/components.module';
import { TeacherComponent } from './pages/teacher/teacher.component';
import { EtudiantComponent } from './pages/etudiant/etudiant.component';
import { LessonComponent } from './pages/lesson/lesson.component';
import { HomeComponent } from './pages/home/home.component';
import { AccueilComponent } from './pages/accueil/accueil.component';
import { ToastrModule } from 'ngx-toastr';
import { CoursComponent } from './pages/cours/cours.component';
import { DetailCourComponent } from './pages/detail-cour/detail-cour.component';
import { ProfesseurComponent } from './pages/professeur/professeur.component';


@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    ComponentsModule,
    NgbModule,
    RouterModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    ToastrModule.forRoot(),
  ],
  declarations: [
    AppComponent,
    AdminLayoutComponent,
    AuthLayoutComponent,
    TeacherComponent,
    EtudiantComponent,
    LessonComponent,
    HomeComponent,
    AccueilComponent,
    CoursComponent,
    DetailCourComponent,
    ProfesseurComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
