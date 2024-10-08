class MedicalData
  def test(specialty)
    data = {
      "Medicina General" => [
        { title: "Examen de rutina", results: "El paciente presenta resultados dentro de los rangos normales en presión arterial, ritmo cardíaco y análisis de sangre." },
        { title: "Examen de colesterol", results: "Los niveles de colesterol total, LDL y HDL se encuentran dentro de los límites normales, sin riesgo cardiovascular aparente." },
        { title: "Control de peso", results: "El índice de masa corporal (IMC) del paciente es adecuado, sin signos de sobrepeso ni obesidad." },
        { title: "Análisis de glucosa", results: "Los niveles de glucosa en sangre están dentro de los límites normales, descartando riesgo de diabetes." },
        { title: "Examen físico general", results: "No se encontraron anomalías durante el examen físico, la movilidad y reflejos son normales." }
      ],

      "Cardioangiologia" => [
        { title: "Ecocardiograma", results: "Las imágenes del ecocardiograma muestran un corazón sano, sin signos de insuficiencia ni malformaciones estructurales." },
        { title: "Prueba de esfuerzo", results: "El paciente completó la prueba de esfuerzo sin presentar arritmias o angina de pecho, con buena tolerancia al ejercicio." },
        { title: "Angiografía", results: "Los vasos sanguíneos coronarios no presentan obstrucciones significativas. Circulación adecuada." },
        { title: "Electrocardiograma", results: "El electrocardiograma muestra un ritmo cardíaco normal sin signos de fibrilación auricular ni taquicardias." },
        { title: "Monitoreo Holter", results: "El monitoreo Holter de 24 horas no detectó irregularidades cardíacas significativas durante el periodo de registro." }
      ],

      "Cardiologia" => [
        { title: "Ecocardiograma Doppler", results: "El flujo sanguíneo a través de las válvulas cardíacas es normal, sin signos de estenosis ni regurgitación." },
        { title: "Prueba de esfuerzo cardiovascular", results: "El paciente demostró buena capacidad física, con respuesta cardíaca adecuada durante la prueba de esfuerzo." },
        { title: "Tomografía coronaria", results: "La tomografía no reveló calcificación significativa en las arterias coronarias." },
        { title: "Tensión arterial", results: "La presión arterial es normal en reposo y durante actividad física moderada." },
        { title: "Análisis de lípidos", results: "Los niveles de triglicéridos y colesterol son saludables, sin signos de riesgo cardiovascular." }
      ],

      "Cirugia Cardiovascular" => [
        { title: "Evaluación prequirúrgica", results: "El paciente es apto para la cirugía, sin riesgos anestésicos o complicaciones cardiovasculares inmediatas." },
        { title: "Revisión de bypass coronario", results: "La cirugía de bypass coronario fue exitosa, sin complicaciones postoperatorias. El flujo sanguíneo ha mejorado." },
        { title: "Reparación valvular", results: "La válvula mitral ha sido reparada correctamente, mejorando la función cardíaca global del paciente." },
        { title: "Postoperatorio de cirugía cardíaca", results: "El paciente ha evolucionado favorablemente tras la cirugía, sin signos de infección o trombosis." },
        { title: "Revisión de marcapasos", results: "El marcapasos está funcionando adecuadamente, manteniendo el ritmo cardíaco en niveles normales." }
      ],

      "Cirugia General" => [
        { title: "Herniorrafia", results: "La reparación de la hernia fue exitosa. El paciente no muestra signos de complicaciones postquirúrgicas." },
        { title: "Apendicectomía", results: "La apendicectomía transcurrió sin complicaciones. El apéndice inflamado fue extirpado completamente." },
        { title: "Colecistectomía", results: "La extracción de la vesícula biliar fue exitosa, sin evidencia de cálculos biliares restantes." },
        { title: "Cirugía laparoscópica", results: "El procedimiento laparoscópico no presentó complicaciones y se logró minimizar el tiempo de recuperación." },
        { title: "Resección intestinal", results: "La resección del segmento intestinal afectado fue exitosa, con un pronóstico positivo para la recuperación." }
      ],

      "Ginecologia" => [
        { title: "Papanicolaou", results: "Los resultados del Papanicolaou son normales, sin presencia de células anormales o indicios de cáncer cervical." },
        { title: "Ecografía transvaginal", results: "La ecografía transvaginal no muestra quistes ni masas en los ovarios o el útero. Todo está en orden." },
        { title: "Mamografía", results: "Los resultados de la mamografía son normales, sin signos de masas sospechosas en las mamas." },
        { title: "Examen de fertilidad", results: "Los análisis hormonales indican niveles normales, no se observan dificultades en la ovulación." },
        { title: "Colposcopia", results: "La colposcopia no mostró lesiones visibles, descartando la necesidad de biopsia en esta ocasión." }
      ],

      "Oncologia" => [
        { title: "Biopsia de tejido", results: "La biopsia muestra tejido benigno, sin signos de malignidad o células anormales." },
        { title: "Marcadores tumorales", results: "Los niveles de marcadores tumorales están dentro del rango normal, sin indicios de cáncer." },
        { title: "Tomografía computarizada", results: "No se detectaron masas tumorales en los órganos principales, ni metástasis visibles." },
        { title: "PET scan", results: "El PET scan no muestra actividad tumoral en las zonas investigadas, resultados favorables." },
        { title: "Revisión post quimioterapia", results: "El paciente responde bien al tratamiento, sin crecimiento tumoral adicional tras la quimioterapia." }
      ],

      "Pediatria" => [
        { title: "Revisión de desarrollo infantil", results: "El niño muestra un desarrollo normal en cuanto a peso, altura y habilidades cognitivas." },
        { title: "Vacunación", results: "El esquema de vacunación está completo y actualizado, el paciente no ha tenido reacciones adversas." },
        { title: "Examen físico pediátrico", results: "El niño presenta signos vitales normales y no se detectaron problemas en el examen físico general." },
        { title: "Prueba de alergias", results: "Los resultados de la prueba de alergias son negativos, el niño no presenta reacciones alérgicas comunes." },
        { title: "Evaluación nutricional", results: "El paciente tiene un peso adecuado para su edad y no presenta deficiencias nutricionales." }
      ],

      "Nefrologia" => [
        { title: "Análisis de orina", results: "No se detectan proteínas o sangre en la orina, descartando problemas renales inmediatos." },
        { title: "Prueba de función renal", results: "La tasa de filtración glomerular está dentro de los límites normales, función renal preservada." },
        { title: "Ecografía renal", results: "Los riñones presentan tamaño y forma normales, sin signos de cálculos ni obstrucciones." },
        { title: "Examen de creatinina", results: "Los niveles de creatinina en sangre están dentro del rango normal, lo que indica una función renal adecuada." },
        { title: "Diálisis de mantenimiento", results: "El paciente ha respondido bien a la diálisis, manteniendo niveles estables de electrolitos y líquidos." }
      ],

      "Oftalmologia" => [
        { title: "Examen de agudeza visual", results: "La agudeza visual del paciente es de 20/20 en ambos ojos, sin necesidad de corrección." },
        { title: "Tonometría", results: "La presión intraocular es normal, sin signos de glaucoma." },
        { title: "Fondo de ojo", results: "El examen del fondo de ojo muestra una retina sana y vasos sanguíneos sin alteraciones." },
        { title: "Prueba de campo visual", results: "El campo visual es completo, sin pérdidas periféricas ni centrales." },
        { title: "Evaluación de cataratas", results: "No se detectan signos de opacidad en el cristalino, descartando cataratas." }
      ],

      "Ortopedia" => [
        { title: "Radiografía de columna", results: "La radiografía no muestra deformidades ni fracturas en la columna vertebral." },
        { title: "Evaluación de escoliosis", results: "El paciente presenta una ligera desviación de la columna, pero sin necesidad de intervención quirúrgica." },
        { title: "Resonancia magnética articular", results: "No se detectaron lesiones importantes en los ligamentos ni en los cartílagos de la rodilla." },
        { title: "Prueba de densidad ósea", results: "La densidad ósea está dentro del rango normal"},
      ],
    }

    data[specialty].sample
  end

  def medical_records
    [
      {
        specialty: "Medicina General",
        history: {
          disability: "Ninguna",
          allergies: "Alergia a la penicilina",
          appointment_reason: "Control anual de salud",
          recommendations: "Mantener una dieta balanceada, realizar ejercicio moderado al menos tres veces por semana y realizar chequeo de colesterol en seis meses."
        }
      },
      {
        specialty: "Cardioangiologia",
        history: {
          disability: "Ninguna",
          allergies: "Ninguna",
          appointment_reason: "Monitoreo de arritmia cardíaca",
          recommendations: "Evitar el consumo de cafeína, realizar caminatas diarias de 30 minutos y tomar la medicación prescrita para la arritmia."
        }
      },
      {
        specialty: "Cardiologia",
        history: {
          disability: "Hipertensión controlada",
          allergies: "Ninguna",
          appointment_reason: "Chequeo tras una cirugía de bypass coronario",
          recommendations: "Control estricto de la presión arterial, continuar con la dieta baja en sodio, y seguimiento con ecocardiograma en 6 meses."
        }
      },
      {
        specialty: "Cirugia Cardiovascular",
        history: {
          disability: "Insuficiencia cardíaca leve",
          allergies: "Ninguna",
          appointment_reason: "Evaluación para posible cirugía de válvula cardíaca",
          recommendations: "Continuar con la medicación actual y programar la intervención quirúrgica en las próximas semanas. Evitar esfuerzos físicos intensos."
        }
      },
      {
        specialty: "Cirugia General",
        history: {
          disability: "Ninguna",
          allergies: "Ninguna",
          appointment_reason: "Consulta preoperatoria para apendicitis",
          recommendations: "Programar cirugía de apendicitis, mantener ayuno previo a la operación y seguir las indicaciones del anestesiólogo."
        }
      },
      {
        specialty: "Ginecologia",
        history: {
          disability: "Ninguna",
          allergies: "Ninguna",
          appointment_reason: "Examen ginecológico de rutina",
          recommendations: "Realizar Papanicolau cada año, mantener una buena higiene íntima, y programar una ecografía en 6 meses para seguimiento."
        }
      },
      {
        specialty: "Oncologia",
        history: {
          disability: "Ninguna",
          allergies: "Ninguna",
          appointment_reason: "Seguimiento post-quimioterapia",
          recommendations: "Continuar con los controles trimestrales, realizar una tomografía en el próximo mes, y mantener una dieta rica en antioxidantes."
        }
      },
      {
        specialty: "Pediatria",
        history: {
          disability: "Ninguna",
          allergies: "Alergia al polen",
          appointment_reason: "Consulta por fiebre y tos",
          recommendations: "Administrar paracetamol para la fiebre, hidratarse adecuadamente y realizar control en una semana si los síntomas persisten."
        }
      },
      {
        specialty: "Nefrologia",
        history: {
          disability: "Ninguna",
          allergies: "Ninguna",
          appointment_reason: "Control de enfermedad renal crónica",
          recommendations: "Mantener la ingesta de líquidos adecuada, reducir la sal en la dieta, y realizar análisis de función renal cada 3 meses."
        }
      },
      {
        specialty: "Oftalmologia",
        history: {
          disability: "Miopía moderada",
          allergies: "Ninguna",
          appointment_reason: "Revisión para actualizar graduación de lentes",
          recommendations: "Actualizar los lentes, realizar ejercicios visuales y controlar en un año para revisar nuevamente la graduación."
        }
      },
      {
        specialty: "Ortopedia",
        history: {
          disability: "Fractura en la muñeca izquierda en recuperación",
          allergies: "Ninguna",
          appointment_reason: "Consulta postoperatoria tras fractura de muñeca",
          recommendations: "Continuar con la fisioterapia, evitar cargar objetos pesados y realizar una radiografía de control en un mes."
        }
      }
    ]
  end

  def meds(specialty)
    data =
      {
        "Medicina General" => [
          {name: "Paracetamol", quantity: 1, periodicity: 8},
          {name: "Ibuprofeno", quantity: 1, periodicity: 6}
        ],
        "Cardioangiologia" => [
          {name: "Atorvastatina", quantity: 1, periodicity: 24},
          {name: "Clopidogrel", quantity: 1, periodicity: 24}
        ],
        "Cardiologia" => [
          {name: "Enalapril", quantity: 1, periodicity: 12},
          {name: "Metoprolol", quantity: 1, periodicity: 12}
        ],
        "Cirugia Cardiovascular" => [
          {name: "Heparina", quantity: 1, periodicity: 8},
          {name: "Furosemida", quantity: 1, periodicity: 12}
        ],
        "Cirugia General" => [
          {name: "Cefalexina", quantity: 1, periodicity: 12},
          {name: "Tramadol", quantity: 1, periodicity: 6}
        ],
        "Ginecologia" => [
          {name: "Metronidazol", quantity: 1, periodicity: 12},
          {name: "Ácido fólico", quantity: 1, periodicity: 24}
        ],
        "Oncologia" => [
          {name: "Tamoxifeno", quantity: 1, periodicity: 24},
          {name: "Cisplatino", quantity: 1, periodicity: 168}
        ],
        "Pediatria" => [
          {name: "Amoxicilina", quantity: 1, periodicity: 8},
          {name: "Salbutamol", quantity: 1, periodicity: 6}
        ],
        "Nefrologia" => [
          {name: "Losartán", quantity: 1, periodicity: 24},
          {name: "Furosemida", quantity: 1, periodicity: 12}
        ],
        "Oftalmologia" => [
          {name: "Tobramicina", quantity: 1, periodicity: 8},
          {name: "Timolol", quantity: 1, periodicity: 12}
        ],
        "Ortopedia" => [
          {name: "Diclofenaco", quantity: 1, periodicity: 8},
          {name: "Calcio+D3", quantity: 1, periodicity: 24}
        ]
      }

    data[specialty]
  end
end
