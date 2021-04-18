import { Routes } from '@angular/router';
import { AccueilComponent } from 'src/app/pages/accueil/accueil.component';
import { CoursComponent } from 'src/app/pages/cours/cours.component';
import { DashboardComponent } from 'src/app/pages/dashboard/dashboard.component';
import { DetailCourComponent } from 'src/app/pages/detail-cour/detail-cour.component';
import { HomeComponent } from 'src/app/pages/home/home.component';
import { LessonComponent } from 'src/app/pages/lesson/lesson.component';

import { LoginComponent } from '../../pages/login/login.component';
import { RegisterComponent } from '../../pages/register/register.component';

export const AuthLayoutRoutes: Routes = [
    { path: 'login',          component: LoginComponent },
    { path: 'register',       component: RegisterComponent },
    { path: 'home',       component: HomeComponent },
    { path: 'acceuil',       component: AccueilComponent },
    { path: 'cours',       component: CoursComponent },
    { path: 'detail-cour',  component: DetailCourComponent }

];
