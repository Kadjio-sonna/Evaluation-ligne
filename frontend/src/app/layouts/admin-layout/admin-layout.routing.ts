import { Routes } from '@angular/router';

import { DashboardComponent } from '../../pages/dashboard/dashboard.component';
import { IconsComponent } from '../../pages/icons/icons.component';
import { MapsComponent } from '../../pages/maps/maps.component';
import { UserProfileComponent } from '../../pages/user-profile/user-profile.component';
import { TablesComponent } from '../../pages/tables/tables.component';
import { TeacherComponent } from 'src/app/pages/teacher/teacher.component';
import { EtudiantComponent } from 'src/app/pages/etudiant/etudiant.component';
import { LessonComponent } from 'src/app/pages/lesson/lesson.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'dashboard',      component: DashboardComponent },
    { path: 'user-profile',   component: UserProfileComponent },
    { path: 'tables',         component: TablesComponent },
    { path: 'icons',          component: IconsComponent },
    { path: 'maps',           component: MapsComponent },
    { path: 'teacher',        component: TeacherComponent },
    { path: 'student',       component: EtudiantComponent },
    { path: 'lesson',       component: LessonComponent }

];
