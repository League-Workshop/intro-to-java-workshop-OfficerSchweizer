package section3;

import javax.swing.JOptionPane;

import com.sun.speech.freetts.Voice;
import com.sun.speech.freetts.VoiceManager;

public class SpeakAndSpell {

	public static void main(String[] args) {

		String word = "ligma";
		String response = "ligma balls. got em";

		// 1. Use the speak method to say the word. "e.g. spell mandlebrot"
		speak("spell," + word);
		// 2. Catch the user's answer in a String
		String answer = JOptionPane.showInputDialog(null);
		// 3. If the user spelled the word correctly, speak "correct"
		if (answer.equals(word)) {
			speak(response);
			// 4. Otherwise say "wrong"
		} else {
			speak("You are trash at spelling");
			// 5. repeat the process for other words

		}
	}

	static void speak(String words) {
		try {
			Runtime.getRuntime().exec("say " + words).waitFor();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
