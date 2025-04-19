class DocumentsData {
  static const ssc = "SSC Marksheet";
  static const hsc = "HSC Marksheet";
  static const mht_or_jee = "MHT-CET / JEE Marksheet";
  static const leaving = 'Leaving Certificate';
  static const nationality = 'Nationality Certificate';
  static const domicile = 'Domicile Certificate';
  static const caste = "Caste Cetificate";
  static const caste_validity = "Caste Validity";
  static const non_cremy_layer = "Non Cremy Layer Certificate";
  static const ews = "EWS Certificate";
  static const categoryA = "Certificate from Performa A";
  static const categoryB = "Certificate from Performa B";
  static const categoryC = "Certificate from Performa C";

  static const categories = [
    "OPEN Category",
    "TFWS Category",
    "EBC Category",
    "OBC Category",
    "SC / ST Category",
    "EWS Category",
    "SBC / VJ / NT Category",
    "Type-C Category",
    "Type-D Category",
    "Type-E Category",
  ];
  static const category = [
    {
      "OPEN": {
        "eligibilty": [
          "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
        ],
      },
    },
    {
      "TFWS": {
        "eligibilty": [
          "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Income Certificate (less than 8 lacks)",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
        ],
      },
    },
    {
      "EBC": {
        "eligibilty": [
          "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
        ],
      },
    },
    {
      "OBC": {
        "eligibilty": [
          "Minimum 40% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Income Certificate (less than 8 lacks)",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          caste,
          caste_validity,
          non_cremy_layer,
        ],
      },
    },
    {
      "SC / ST": {
        "eligibilty": [
          "Minimum 40% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          caste,
          caste_validity,
          non_cremy_layer
        ],
      },
    },
    {
      "EWS": {
        "eligibilty": [
          "Minimum 40% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          caste,
          caste_validity,
          non_cremy_layer,
          ews,
        ],
      },
    },
    {
      "SBC / VJ / NT": {
        "eligibilty": [
          "Minimum 40% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Income Certificate (less than 8 lacks)",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          caste,
          caste_validity,
          non_cremy_layer,
        ],
      },
    },
    {
      "Type-C": {
        "eligibilty": [
          "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          categoryA,
        ],
      },
    },
    {
      "Type-D": {
        "eligibilty": [
          "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          categoryB,
        ],
      },
    },
    {
      "Type-E": {
        "eligibilty": [
          "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
          "Appered in MHT-CET or JEE Mains (Paper 1)"
        ],
        "income_certificate": "Not Required",
        "documents": [
          ssc,
          hsc,
          mht_or_jee,
          leaving,
          nationality,
          domicile,
          categoryC,
        ],
      },
    },
  ];

  static const normalEligibility = [
    "Minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
    "Appered in MHT-CET or JEE Mains (Paper 1)"
  ];

  static const specialEligibility = [
    "Minimum 40% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC",
    "Appered in MHT-CET or JEE Mains (Paper 1)"
  ];
  static const eligibility = <String, List<String>>{
    "OPEN Category": normalEligibility,
    "TFWS Category": normalEligibility,
    "EBC Category": normalEligibility,
    "OBC Category": specialEligibility,
    "SC / ST Category": specialEligibility,
    "EWS Category": specialEligibility,
    "SBC / VJ / NT Category": specialEligibility,
    "Type-C Category": normalEligibility,
    "Type-D Category": normalEligibility,
    "Type-E Category": normalEligibility,
  };

  static const notRequired = "Not Required";
  static const lessThan8 = "Income Certificate (less than 8 lacks)";

  static const incomeCertificate = <String, String>{
    "OPEN Category": notRequired,
    "TFWS Category": lessThan8,
    "EBC Category": lessThan8,
    "OBC Category": lessThan8,
    "SC / ST Category": notRequired,
    "EWS Category": notRequired,
    "SBC / VJ / NT Category": lessThan8,
    "Type-C Category": notRequired,
    "Type-D Category": notRequired,
    "Type-E Category": notRequired,
  };

  static const documents = <String, List<String>>{
    "OPEN Category": [ssc, hsc, mht_or_jee, leaving, nationality, domicile],
    "TFWS Category": [ssc, hsc, mht_or_jee, leaving, nationality, domicile],
    "EBC Category": [ssc, hsc, mht_or_jee, leaving, nationality, domicile],
    "OBC Category": [
      ssc,
      hsc,
      mht_or_jee,
      leaving,
      nationality,
      domicile,
      caste,
      caste_validity,
      non_cremy_layer
    ],
    "SC / ST Category": [
      ssc,
      hsc,
      mht_or_jee,
      leaving,
      nationality,
      domicile,
      caste,
      caste_validity
    ],
    "EWS Category": [ssc, hsc, mht_or_jee, leaving, nationality, domicile, ews],
    "SBC / VJ / NT Category": [
      ssc,
      hsc,
      mht_or_jee,
      leaving,
      nationality,
      domicile,
      caste,
      caste_validity,
      non_cremy_layer
    ],
    "Type-C Category": [
      ssc,
      hsc,
      mht_or_jee,
      leaving,
      nationality,
      domicile,
      categoryA
    ],
    "Type-D Category": [
      ssc,
      hsc,
      mht_or_jee,
      leaving,
      nationality,
      domicile,
      categoryB
    ],
    "Type-E Category": [
      ssc,
      hsc,
      mht_or_jee,
      leaving,
      nationality,
      domicile,
      categoryC
    ],
  };
}
