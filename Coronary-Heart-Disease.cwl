cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  coronary-heart-disease-angina---primary:
    run: coronary-heart-disease-angina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  coronary-heart-disease-insufficiency---primary:
    run: coronary-heart-disease-insufficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-angina---primary/output
  unstable-coronary-heart-disease---primary:
    run: unstable-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-insufficiency---primary/output
  coronary-heart-disease-pectoris---primary:
    run: coronary-heart-disease-pectoris---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: unstable-coronary-heart-disease---primary/output
  coronary-heart-disease-preinfarction---primary:
    run: coronary-heart-disease-preinfarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-pectoris---primary/output
  coronary-heart-disease-specified---primary:
    run: coronary-heart-disease-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-preinfarction---primary/output
  coronary-heart-disease-forms---primary:
    run: coronary-heart-disease-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-specified---primary/output
  coronary-heart-disease-ischaemia---primary:
    run: coronary-heart-disease-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-forms---primary/output
  atherosclerotic-coronary-heart-disease---primary:
    run: atherosclerotic-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-ischaemia---primary/output
  coronary-heart-disease-stenocardia---primary:
    run: coronary-heart-disease-stenocardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: atherosclerotic-coronary-heart-disease---primary/output
  coronary-heart-disease-vessel---primary:
    run: coronary-heart-disease-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-stenocardia---primary/output
  coronary-heart-disease-artery---primary:
    run: coronary-heart-disease-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-vessel---primary/output
  coronary-heart-disease-dressler's---primary:
    run: coronary-heart-disease-dressler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-artery---primary/output
  coronary-heart-disease-crescendo---primary:
    run: coronary-heart-disease-crescendo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-dressler's---primary/output
  coronary-heart-disease---primary:
    run: coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-crescendo---primary/output
  coronary-heart-disease-decubitus---primary:
    run: coronary-heart-disease-decubitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease---primary/output
  coronary-heart-disease-subacute---primary:
    run: coronary-heart-disease-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-decubitus---primary/output
  coronary-heart-disease-effort---primary:
    run: coronary-heart-disease-effort---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-subacute---primary/output
  asymptomatic-coronary-heart-disease---primary:
    run: asymptomatic-coronary-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-effort---primary/output
  coronary-heart-disease-anginosus---primary:
    run: coronary-heart-disease-anginosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: asymptomatic-coronary-heart-disease---primary/output
  coronary-heart-disease-hypertension---primary:
    run: coronary-heart-disease-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-anginosus---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-hypertension---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
