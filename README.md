s4-04_FreeDoc
Group : Robin D'Ercole and Carolina Ferreira



FreeDoc
Exercice de création de base de données avec Ruby On Rails.

Relations entre les tables
Doctor: Lié à Patient en relation N-N via Appointment, à City en N-1, et à Specialty en N-N.
Patient: Lié à Doctor en N-N via Appointment, à City en N-1.
Appointment: Joint la relation N-N entre Doctor et Patient.
City: Lié en relation 1-N à Doctor, Patient, et Appointment.
Specialty: Lié à doctor en N-N via JoinTableDoctorSpecialty.
JoinTableDoctorSpecialty: Joint la relation N-N entre Doctor et Specialty.
