//testing out var, null, dart syntax, switches,etc
import 'dart:io';
import 'dart:math';
int score = 0;
int comp_score = 0;
void main() {
  while (true){
    List options = ['scissors','paper','rock'];
    Random random = Random();
    print('Rock, Paper, Scissor. Select quit to exit.');
    String? user_choice = stdin.readLineSync()?.toLowerCase();
    
    var computer_choice = options[random.nextInt(options.length)];
    if (user_choice == null || !options.contains(user_choice)){
      print("Invalid choice!");
    }
    else if (user_choice == 'quit'){
      break;
    }
    switch (computer_choice) {
      case 'rock':
        if (user_choice == 'paper') {
          print("You win! The Computer Selected Rock!");
          score += 1;
          comp_score += 0;
        }
        else if (user_choice == 'scissors') {
          print("You lose! The Computer Selected Rock!");
          score += 0;
          comp_score += 1;
        }
        else if (user_choice == 'rock') {
          print("You tied! The Computer Selected Rock!");
          comp_score += 0;
          score += 0;
        }
        break;
      case 'paper':
        if (user_choice == 'paper') {
          print("You tied! The Computer Selected Paper!");
          comp_score += 0;
          score += 0;
        }
        else if (user_choice == 'scissors') {
          print("You win! The Computer Selected Paper!");
          score += 1;
          comp_score += 0;
        }
        else if (user_choice == 'rock') {
          print("You lost! The Computer Selected Paper!");
          comp_score += 1;
          score += 0;
        }
        break;
      case 'scissors':
        if (user_choice == 'paper') {
          print("You lost! The Computer Selected scissors!");
          comp_score += 1;
          score += 0;
        }
        else if (user_choice == 'scissors') {
          print("You tied! The Computer Selected scissors!");
          comp_score += 0;
          score += 0;
        }
        else if (user_choice == 'rock') {
          print("You win! The Computer Selected scissors!");
          score += 1;
          comp_score += 0;
        }
        break;
      default:
        print('Invalid answer.');
    }
    print('Its $score to $comp_score.');
    print('');
  }
}



