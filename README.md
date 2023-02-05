IT Practical Assessment Task - 2022 _Grade 11_
=================================================  
  
This PAT focuses on code generation, and was graded 130/130 (100%). The PAT, coded in Delphi (Pascal) is complete with comments, quality code, a help-file, and more.  
  
![License](https://img.shields.io/github/license/SkillBeatsAll/itpat-2022?color=6995db&style=for-the-badge) ![visitors](https://shields-io-visitor-counter.herokuapp.com/badge?page=SkillBeatsAll.itpat-2022&color=6995db&style=for-the-badge)  
  
  
Table of contents  
-----------------  
  
- [IT Practical Assessment Task - 2022](#it-practical-assessment-task---2022)
  - [Table of contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Topic](#topic)
  - [Usage](#usage)
  - [Getting help](#getting-help)
  - [License](#license)
  
  
Introduction  
------------  
  
This repository contains all the required files to compile the PAT. The PAT is based on the provided [topic](#topic), and is complete with comments, functions, a database, text-files for importing / exporting, a help file (_.chm_), appropriate hints, and more.  
  
The project contains 9 forms: 
1. Login Form: Complete with a beautiful GUI and the option for users to register.  
1. Registration Form: This form allows the user to register as either a *spectator*, or a *manager*.   
2. Authentication-help Form: Aims to help ***managers*** with 2FA. Provides them with their secret key for their 2FA-app, as well as a QR code and instructions.  
3. Main Menu: This form serves as a gateway to the tournament forms, and enables certain forms based on user privileges (admin/manager/spectator).
4. Tournament Viewer: This displays the tournament through the use of dynamically created objects, coupled with a beautiful GUI.
5. Tournament Manager: Managers or admins use this form to manage their tournaments.
6. Tournament Creator: Allows managers / admins to create a tournament. Supports for 8 players.
7. Player Manager: Allows admins or managers to add players either manually, or through importing them from a textfile / csv file.
8. Admin Screen: Admins are able to directly manage the tournament database here.   
  
  
Topic  
------------  
(*taken from DBE - INFORMATION TECHNOLOGY GUIDELINES FOR PRACTICAL ASSESSMENT TASK (PAT) Grade 11*)  

There are many types of activities where learners are competing at school level. These
competitions range from sport, to cultural and various extra mural activities. For this year, learners
are expected to design and develop a Delphi program for an interactive “**tournament style
planner and updater**”

A tournament is a competition held among different teams in a particular game or activity
according to a fixed schedule where a winner is eventually decided.

There are several formats used in various levels of competition in activities and games to
determine an overall champion. Some of the most common are the single elimination, the best-of-
series, the total points series more commonly known as on aggregate, or the round-robin
tournament.

Other examples of different types of tournaments are (not limited to):
- Knock-out or Elimination Tournament (Single Knock-out or Single Elimination, Consolation Type I and Type II, C Double Knock-out or Double Elimination)
- League or Round Robin Tournament (Single League, and Double League)
- Combination Tournament (Knock-out cum Knock-out, Knock-out cum League, League cum Knock-out, League cum League)
- Challenge Tournament (Ladder and Pyramid)

Different types of tournaments have their own merits and demerits.

This project allows you to create a programme using Delphi. Use good programming principles
throughout.

Make use of the following pre-scripts for the application:
- select a tournament of your choice.
- choose ONE types of tournament structures/styles for the current planned “competition”
- allow different teams/applicants to be entered.
- provide the correct tournament plan, populated with the participants/teams
- update after each match/session.
- correctly present the leaders and winners

Instructions should be clear so that anybody could use the program
- Expected additional features:
    - The expected time to complete the tournament
    - The expected number of officials needed to complete the event
This tournament software program is targeted at the organiser of the event.

The application needs to make use of arrays and a database.

The tournament could be based on an existing school tournament or it could be a new idea for
a tournament.

The complexity of the tournament is not awarded any marks.

Your final program must comprise ***one*** single, logically related piece of software.
  
Usage  
-----  
This project can be compiled and ran through the Delphi IDE (RAD Studio). The executable file will be saved under */Win32/Release* in the project folder, which can then be distributed.  
Note that this project was created using *Delphi 11*.
  
Getting help  
------------  
  
You can contact me via [email](mailto:joelcedras@gmail.com), via [Twitter](https://twitter.com/JoelBeatsAll), or via [Discord](https://discordhub.com/profile/234576713005137920).
  
  
License  
-------  
  
This project is distributed under the terms of the [MIT license](https://github.com/SkillBeatsAll/itpat-2022/blob/c8be1f056484ba9a49691396e7bb00624add5d07/LICENSE). The license applies to this file and other files in the [GitHub repository](http://github.com/SkillBeatsAll/itpat-2022) hosting this file.

```
Copyright (C) 2023 Joel Cedras / SkillBeatsAll.

Licensed under the MIT License (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://opensource.org/licenses/MIT

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.
```
