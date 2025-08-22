# Therapeutics curriculum

The Pharmacy Practice and Medicines Management stream is working to develop a therapeutics curriculum for use throughout the program.


## Objectives

* Determine a list of key disease states that students are expected to know well; the idea is that these are the 80% conditions: common conditions that students will encounter and need to be able to contribute to therapeutic decisions in relation to
* Provide clarity regarding when the disease is taught in the program and who teaches the condition
* Support consistent and comprehensive assessment in relation to the conditions. The curriculum would allow the School to demonstrate that students have demonstrated knowledge and skills in these conditions throughout the program


## Plan


1. Adopt ACCP Pharmacotherapy Didactic Curriculum 2023 (Kolanczyk et al. 2024).  Adapt as appropriate for our context.
2. Map our current teaching against the curriculum
3. Identify learning objectives for all (or most) Tier 1 and Tier 2 conditions
4. Develop automatically marked questions for all learning objectives
2. Each Pharmacy Practice and Medicines Management course includes a hurdle therapeutics exam (~ 20%). 

## ACCP curriculum

The ACCP curriculum provides a list of 231 conditions from 23 systems ordered into three tiers.

The tiers are defined in the following ways

Tier 1
:   Students receive sufficient education and training on this condition to prepare them to be practice-ready pharmacists providing collaborative, person-centered care upon graduation and licensure

Tier 2
:   Students receive foundational education and training on this condition, but some additional knowledge and/or training will be required after graduation (e.g., residency, fellowship, or other experiences) to prepare them to be practice-ready pharmacists providing collaborative, person-centered care

Tier 3
:   Students receive limited education on this condition, and substantial knowledge or training will be required after graduation (e.g., residency, fellowship, or other experiences) to prepare them to provide collaborative, person-centered care


See the spreadsheet with mapping to current courses, [here](https://docs.google.com/spreadsheets/d/1ffNZxPYdQesjKouM9m-iFHkpD89WEV0Y09sEGhG8BHM/edit?usp=sharing).

The `yaml` version of the database is [here](therapeutics-curriculum.yaml).


### Adapting the ACCP curriculum

So far we have made the decision not to modify the ACCP curriculum; i.e. retain the list of conditions, systems and tiers.

We do however want to adapt the curriculum in a couple of ways:

1. Recognise that some of our teaching might aim *higher* than the tier suggested by ACCP. We might teach and assess a Tier 2 condition at the Tier 1 level. We will  seek to note this where relevant.
2. Recognise that there are some Australian-specific conditions/contexts we need to cover. A good example is Indigenous Health priorities. We might seek to address these context-specific elements at the learning objective level.


## Identify learning objectives

Please work through the conditions for your course and provide learning objectives for any conditions covered in your course that are in Tier 1 or Tier 2.

Many conditions are covered in multiple courses, often at slightly different levels.

The learning objectives we want are the learning objectives we want students to have achieved at completion of the *program* (i.e. they are not course-specific). 

If a condition is covered in multiple courses, collaborate on the learning objectives.

The following general learning objectives might be helpful for thinking about the condition-specific learning objective: 

1. Be able to apply knowledge of the pathophysiology, prognosis, signs and symptoms and lived-experience of the condition
2. Be able to apply evidence and best-practice guidance regarding pharmacotherapy for the condition to individual patients
3. Be able to individualise pharmacotherapy for the condition to key patient groups

Some examples to get things started.

*Chronic coronary disease*

Students are expected to be able to:

1. Evaluate pharmacotherapeutic management of secondary prevention following ACS
1. Identify MOA, adverse effects and outcome evidence for statins, ACEI/ARB, betablockers, [more?]
1. Evaluate cardiac risk

*Dyslipidaemia*

Students are expected to be able to:

1. Describe treatment goals
1. Evaluate cardiac risks including interpreting lab test
1. Idenitfy MOA, adverse effect and outcome evidence for statins, ezitemide

### Database

The database is stored in a `yaml` file. This format allows use to store lists within lists in a plain text format.

`yaml` is a markup language that is easily read and allows complex structures of dictionaries and lists. Hopefully the database is relatively self-explanatory

```{yaml}

- system: Cardiovascular conditions
  tiers:
  
  - tier: 1
    conditions:
    
    - name: Arrhythmias, atrial
      subjects:
      - PHRM2102
      - PHRM3102
    
    - name: Chronic coronary disease (formerly stable ischemic heart disease)
      subjects:
      - PHRM2102
      los:
      - Evaluate pharmacotherapeutic management of secondary prevention following ACS
      - Identify MOA, adverse effects and outcome evidence for statins, ACEI/ARB, betablockers, [more?]
      - Evaluate cardiac risk
```

This snippet provides the first two conditions listed within cardiovascular conditions (system) in Tier 1: atrial arrhythmias and chronic coronary disease.

The spacing and indents are important and provides a hierarchical structure, i.e. the indents indicate that the subjects listed below to Arrhythmia, atrial and Chronic coronary disease, respectively. 
The learning objectives ("los") work in a similar way.

Because this is in a hierarchical format, we will be able to filter and modify the database to answer specific questions: e.g. What are all the conditions covered in PHRM2102?

Resources regarding `yaml` are easy to find: [example](https://www.cloudbees.com/blog/yaml-tutorial-everything-you-need-get-started) and [wikipedia](https://en.wikipedia.org/wiki/YAML)

#### Editing the database


1. Edit online via github

	The file is [here][therapeutics-curriculum.yaml]. You can edit it online via github. Instructions can be found [here](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files#editing-files-in-another-users-repository).

	I suspect you will need to create an account with github.

1. Download and edit the file

	You can download the current version of the file [here](therapeutics-curriculum.yaml) (look for "download icon")

	While you don't need to, you can open and edit the file in any plain text editor (e.g. Notepad (PC), TextEdit (Mac); more sophisticated text editors, such as SublimeText, Notepad++, etc will provide additional tools such as syntax highlighting).

	Once you have updated the file, send a copy to me.

## Developing questions

Here is my quick ChatGPT go at generating [exam questions for PHRM2102](https://chatgpt.com/share/684655ea-4ccc-8005-88ca-5f636ab6a284).

  - The therapeutics exam focuses on Tier 1 (with some Tier 2) conditions from ACCP taught in PHRM2102

  - Assess the following global objectives
    
    1.  Be able to apply knowledge of the pathophysiology, prognosis, signs and symptoms and lived-experience of the condition
    2.  Be able to apply evidence and best-practice guidance regarding pharmacotherapy for the condition to individual patients
    3.  Be able to individualise pharmacotherapy for the condition to key patient groups

  - These can be tailored and added to the specific conditions, for example something like the following are a reasonable starting point for "Chronic coronary diseases"
    
      - Evaluate pharmacotherapeutic management of secondary prevention following ACS
      - Identify MOA, adverse effects and outcome evidence for statins, ACEI/ARB, betablockers, [more?]
      - Evaluate cardiac risk

I used this example for the questions generated, all need review and change, but I think they are good examples of the kind of questions we are looking for (especially the final two sets following the prompt for critical thinking skills).

Key prompts:

  - Specific learning objectives
  - 5 option multiple choice questions with good distractors
  - Aim the questions at year 2 pharmacy students and focus on critical thinking skills: analyse, evaluate, justify and explain.

## Bibliography

Kolanczyk, D. M., Merlo, J. R., Bradley, B., Flannery, A. H., Gibson, C. M., McBane, S., Murphy, J. A., Noble, J. M., Noble, M. B., Patton, H. M., Rosselli, J. L., Stone, R. H., & Thornby, K.-A. (2024). 2023 update to the American College of Clinical Pharmacy Pharmacotherapy Didactic Curriculum Toolkit. JACCP: JOURNAL OF THE AMERICAN COLLEGE OF CLINICAL PHARMACY, 7(3), 255–269. https://doi.org/10.1002/jac5.1930