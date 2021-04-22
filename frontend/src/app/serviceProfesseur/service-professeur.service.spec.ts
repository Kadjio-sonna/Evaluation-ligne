import { TestBed } from '@angular/core/testing';

import { ServiceProfesseurService } from './service-professeur.service';

describe('ServiceProfesseurService', () => {
  let service: ServiceProfesseurService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ServiceProfesseurService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
