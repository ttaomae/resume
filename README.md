# Résumé in LaTeX
This project hosts my résumé, written in LaTeX. You can find a PDF version on the
[releases page](https://github.com/ttaomae/resume/releases) or at
[my github.io page](https://ttaomae.github.io/files/todd-taomae-resume.pdf)

## resume.cls
The class file provides a simple layout which attempts to be generic, but is slightly geared towards
my specific usage. It provides the following environments with key-value arguments. Within each
environment, you can add additional details.

* `header`
  * `name`
  * `email`
  * `phonenumber`
  * `website` (Optional.)
* `degree`
  * `title`
  * `school`
  * `date`
* `job`
  * `title`
  * `startdate`
  * `enddate` (Optional. Leave blank if you are still employed at this job.)
  * `employer` (Optional. Leave blank if listing multiple jobs with the same employer.)
  * `location` (Optional. Same as above.)
* `project` (Intended for software projects, but you can use the `language` argument for some other
  type of categorization.)
  * `title`
  * `link` (Optional.)
  * `language` 
* `skill`
  * `title`
