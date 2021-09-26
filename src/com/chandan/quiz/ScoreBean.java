package com.chandan.quiz;

import java.util.ArrayList;

public class ScoreBean {
	int attempted,score,correct_answers,wrong_answers;
	String quiz_name;
	ArrayList<QuizBean> quesList;
	String[] userAnswers;
	public int getAttempted() {
		return attempted;
	}
	public int getScore() {
		return score;
	}
	public int getCorrect_answers() {
		return correct_answers;
	}
	public int getWrong_answers() {
		return wrong_answers;
	}
	public String getQuiz_name() {
		return quiz_name;
	}
	public void setAttempted(int attempted) {
		this.attempted = attempted;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public void setCorrect_answers(int correct_answers) {
		this.correct_answers = correct_answers;
	}
	public void setWrong_answers(int wrong_answers) {
		this.wrong_answers = wrong_answers;
	}
	public void setQuiz_name(String quiz_name) {
		this.quiz_name = quiz_name;
	}
	public ArrayList<QuizBean> getQuesList() {
		return quesList;
	}
	
	public void setQuesList(ArrayList<QuizBean> quesList) {
		this.quesList = quesList;
	}
	
	public void setUserAnswers(String[] userAnswers) {
		this.userAnswers = userAnswers;
	}
	public String[] getUserAnswers() {
		return userAnswers;
	}
}
