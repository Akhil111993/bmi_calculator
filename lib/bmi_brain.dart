import 'dart:math';

class BMIBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  BMIBrain({required this.height, required this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi > 40) {
      return 'അമിതവണ്ണം ക്ലാസ് 3';
    } else if (_bmi > 35.0) {
      return 'അമിതവണ്ണം ക്ലാസ് 2';
    } else if (_bmi > 30.0) {
      return 'അമിതവണ്ണം ക്ലാസ് 1';
    } else if (_bmi > 25.0) {
      return 'അമിതഭാരം';
    } else if (_bmi > 18.5) {
      return 'അനുയോജ്യം';
    } else {
      return 'ഭാരക്കുറവ്';
    }
  }

  String getAdviceText() {
    if (_bmi > 35) {
      return 'നിങ്ങൾ എത്രയും വേഗം ഒരു ഡോക്ടറെ കാണണം';
    } else if (_bmi > 25.0) {
      return 'നിങ്ങൾ വ്യായാമങ്ങൾ ചെയ്യാൻ തുടങ്ങുകയും ഭക്ഷണം കുറച്ച് കഴിക്കുകയും വേണം. നിങ്ങളുടെ ഭക്ഷണത്തിൽ പോഷകസമൃദ്ധമായ ഭക്ഷണം ഉൾപ്പെടുത്തുക';
    } else if (_bmi > 18.5) {
      return 'നല്ലത്. നിങ്ങളുടെ ശരീരം ഫിറ്റാണ്';
    } else {
      return 'നിങ്ങൾ കൂടുതൽ ഭക്ഷണം കഴിക്കണം. ഒരു ഡോക്ടറെ സമീപിക്കുന്നത് നല്ലതാണ്';
    }
  }
}
