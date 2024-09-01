import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kata_fizzbuzzwhizz/fizz_buzz__whizz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String title = 'TAKA: FizzBuzzWhizz';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String translation = "";
  //default values
  final String defaultDividend = "0",
      defaultFirstDivisor = "3",
      defaultSecondDivisor = "5",
      defaultThirdDivisor = "7";
  //controllers
  final TextEditingController dividendController = TextEditingController(),
      firstDivisorController = TextEditingController(),
      secondDivisorController = TextEditingController(),
      thirdDivisorController = TextEditingController();

  String _getDividend() {
    int dividend = int.parse(dividendController.text);
    int firstDivisor = int.parse(firstDivisorController.text);
    int secondDivisor = int.parse(secondDivisorController.text);
    int thirdDivisor = int.parse(thirdDivisorController.text);

    return FizzBuzzWhizz.getStringTranslation(
      dividend,
      firstDivisor: firstDivisor,
      secondDivisor: secondDivisor,
      thirdDivisor: thirdDivisor,
    );
  }

  void _updateDividend() {
    setState(() {
      translation = _getDividend();
    });
  }

  bool _dividendIsDivisibleByDivisor(String dividend, String divisor) {
    if ((int.tryParse(divisor) ?? 0) == 0) {
      return false;
    } else {
      return int.parse(dividend) % int.parse(divisor) == 0;
    }
  }

  String getDivisorExplanation(TextEditingController divisorController) {
    bool isDivisible = _dividendIsDivisibleByDivisor(
        dividendController.text, divisorController.text);
    return "${dividendController.text} is ${isDivisible ? "" : "not"} divisible by ${divisorController.text}";
  }

  void _reset() {
    dividendController.text = defaultDividend;
    firstDivisorController.text = defaultFirstDivisor;
    secondDivisorController.text = defaultSecondDivisor;
    thirdDivisorController.text = defaultThirdDivisor;

    _updateDividend();
  }

  @override
  void initState() {
    //init dividend and divisors with default values
    dividendController.text = defaultDividend;
    firstDivisorController.text = defaultFirstDivisor;
    secondDivisorController.text = defaultSecondDivisor;
    thirdDivisorController.text = defaultThirdDivisor;

    translation = _getDividend();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                translation,
                style: const TextStyle(fontSize: 30),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "* Fizz: ${getDivisorExplanation(firstDivisorController)}",
                        style: TextStyle(
                          color: _dividendIsDivisibleByDivisor(
                                  dividendController.text,
                                  firstDivisorController.text)
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "* Buzz: ${getDivisorExplanation(secondDivisorController)}",
                        style: TextStyle(
                          color: _dividendIsDivisibleByDivisor(
                                  dividendController.text,
                                  secondDivisorController.text)
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "* Whizz: ${getDivisorExplanation(thirdDivisorController)}",
                        style: TextStyle(
                          color: _dividendIsDivisibleByDivisor(
                                  dividendController.text,
                                  thirdDivisorController.text)
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: dividendController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (_) => _updateDividend(),
                      decoration: const InputDecoration(
                        labelText: 'Enter your dividend',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: firstDivisorController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (_) => _updateDividend(),
                      decoration: const InputDecoration(
                        labelText: 'Enter your first divisor (Fizz)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: secondDivisorController,
                      keyboardType: TextInputType.number,
                      onChanged: (_) => _updateDividend(),
                      decoration: const InputDecoration(
                        labelText: 'Enter your second divisor (Buzz)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: thirdDivisorController,
                      keyboardType: TextInputType.number,
                      onChanged: (_) => _updateDividend(),
                      decoration: const InputDecoration(
                        labelText: 'Enter your third divisor (Whizz)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: _reset, child: const Text("reset"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
