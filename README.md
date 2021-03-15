# posts

A new Flutter project.

# for cocapods error

    sudo gem install cocoapods

## how store user login in cache

    import 'package:shared_preferences/shared_preferences.dart';

    class Constants {
      static SharedPreferences prefs;
    }

## set the shared memory in run app
    Future main() async {
      WidgetsFlutterBinding.ensureInitialized();
      Constants.prefs = await SharedPreferences.getInstance();
      runApp(MyApp());
    }

## now set and get

    Constants.pref.setBool("loggedIn", true)

    Constants.pref.getBool("loggedIn", false)
    